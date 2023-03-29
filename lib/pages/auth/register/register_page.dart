import 'package:samawa/import/main/all_import.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);
  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final passwordController = TextEditingController();
  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Container(
            color: sPrimaryPinkPastelColor,
            child: SizedBox(
              width: size.width,
              height: size.height,
              child: SingleChildScrollView(
                child: Stack(
                  children: [
                    Upside(
                      imgUrl: "assets/intro/register.png",
                        height: size.height / 3.2
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: size.height / 2.9,
                      ),
                      child: Container(
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50),
                          ),
                        ),
                        child: Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: size.width * 0.08,
                                vertical: size.width * 0.04),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TitleAuth(
                                  title: "REGISTER",
                                  description: "Buat Akun untuk Melanjutkan",
                                ),
                                Form(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      RoundedInputNumber(
                                        hintText: "@email",
                                        type: TextInputType.emailAddress,
                                        icon: Icons.email,
                                        controller: emailController,
                                      ),
                                      RoundedInputNumber(
                                        hintText: "No Telp",
                                        type: TextInputType.number,
                                        icon: Icons.phone,
                                        controller: emailController,
                                      ),
                                      RoundedInputNumber(
                                        hintText: "Password",
                                        isVisible: true,
                                        icon: Icons.lock,
                                        controller: passwordController,
                                      ),
                                      RoundedInputNumber(
                                        hintText: "Retype Password",
                                        isVisible: true,
                                        icon: Icons.lock,
                                        controller: passwordController,
                                      ),
                                      RoundedButton(
                                        text: "Lanjutkan",
                                        color: sPrimaryColor,
                                        press: () {

                                        },
                                      ),
                                      RoundedButton(
                                        logo: "assets/logos/google.png",
                                        text: "Register With Google",
                                        color: sPrimaryWhiteColor,
                                        textColor: sPrimaryColor,
                                        press: () {

                                        },
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top:  size.width * 0.02),
                                        child: UnderPart(
                                          title: "Already Has Account?",
                                          navigatorText: "Login",
                                          onTap: () {
                                            Get.to(LoginPage());
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