import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:samawa/import/main/all_import.dart';
import 'package:samawa/service/auth_service.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final passwordController = TextEditingController();
  final emailController = TextEditingController();

  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final UserProvider userProvider = Get.find();

  final box = GetStorage();
  Widget loginButton() => RoundedButton(
      text: 'LOGIN',
      press: () {
        userProvider.login({
          'email': emailController.text,
          'password': passwordController.text
        }).then((response) {
          print('respon body: ${response.body}');
          if (response.body['access_token'] != null) {
            box.write('token', response.body['access_token']);
            print('token: ${response.body['access_token']}');
            box.write('login', true);
            box.write('email', emailController.text);
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => const Navbar()),
              (Route<dynamic> route) => false,
            );
          } else {
            Get.snackbar('Info', 'Gagal login');
          }
        });
      });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
        child: Scaffold(
      backgroundColor: sPrimaryWhiteColor,
      body: Container(
        color: sPrimaryPinkPastelColor,
        child: SizedBox(
          width: size.width,
          height: size.height,
          child: SingleChildScrollView(
            child: Stack(
              children: [
                Upside(
                  imgUrl: "assets/intro/login.png",
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: size.height / 2.15,
                  ),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                    ),
                    child: Container(
                        margin: EdgeInsets.only(
                            right: size.width * 0.08,
                            left: size.width * 0.08,
                            top: size.width * 0.04),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TitleAuth(
                              title: "LOGIN",
                              description: "Masukkan email dan password",
                            ),
                            Form(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  RoundedInput(
                                    textTitle: "Email",
                                    hintText: "@email",
                                    icon: Icons.email,
                                    type: TextInputType.emailAddress,
                                    controller: emailController,
                                  ),
                                  RoundedInput(
                                    textTitle: "Password",
                                    hintText: "Password",
                                    isVisible: true,
                                    icon: Icons.lock,
                                    controller: passwordController,
                                  ),
                                  Container(
                                    height: size.width * 0.07,
                                    child: switchListTile(),
                                  ),
                                  loginButton(),
                                  RoundedButton(
                                    logo: "assets/logos/google.png",
                                    text: "Login With Google",
                                    color: sPrimaryWhiteColor,
                                    textColor: sPrimaryColor,
                                    press: () async {
                                      User? result = await AuthService()
                                          .signInWithGoogle();
                                      if (result != null) {
                                        print("success");
                                        Navigator.of(context).pushReplacement(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Navbar()));
                                      }
                                      // _googleSignIn.signIn();
                                    },
                                  ),
                                  Container(
                                    margin:
                                        EdgeInsets.only(top: size.width * 0.02),
                                    child: UnderPart(
                                      title: "Don't have an account?",
                                      navigatorText: "Register",
                                      onTap: () {
                                        Get.to(RegisterPage());
                                      },
                                    ),
                                  ),
                                  UnderPart(
                                    navigatorText: "Forgot password?",
                                    onTap: () {},
                                  ),
                                ],
                              ),
                            )
                          ],
                        )),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}

class switchListTile extends StatefulWidget {
  @override
  State<switchListTile> createState() => _switchListTileState();
}

class _switchListTileState extends State<switchListTile> {
  bool isSwitched = false;

  void _onSwitchChanged(bool value) {
    isSwitched = value;
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SwitchListTile(
        visualDensity: VisualDensity(horizontal: 0, vertical: -4),
        dense: true,
        title: Text(
          'Remember Me',
          style: TextStyle(fontSize: 16, fontFamily: 'OpenSans'),
        ),
        value: isSwitched,
        activeColor: sPrimaryColor,
        onChanged: (bool value) {
          setState(() {
            _onSwitchChanged(value);
          });
        },
      ),
    );
  }
}
