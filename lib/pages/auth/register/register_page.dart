import 'package:samawa/import/main/all_import.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);
  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final passwordController = TextEditingController();
  final retypePasswordController = TextEditingController();
  final emailController = TextEditingController();
  final telpController = TextEditingController();

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
                      imgUrl: "assets/intro/register.png",
                        height: size.height / 3.8
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: size.height / 3.5,
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
                                      RoundedInput(
                                        textTitle: "Email",
                                        hintText: "@email",
                                        type: TextInputType.emailAddress,
                                        icon: Icons.email,
                                        controller: emailController,
                                      ),
                                      RoundedInput(
                                        textTitle: "No Telepon",
                                        hintText: "No Telp",
                                        type: TextInputType.number,
                                        icon: Icons.phone,
                                        controller: telpController,
                                      ),
                                      RoundedInput(
                                        textTitle: "Password",
                                        hintText: "Password",
                                        isVisible: true,
                                        icon: Icons.lock,
                                        controller: passwordController,
                                      ),
                                      RoundedInput(
                                        textTitle: "Konfirmasi Password",
                                        hintText: "Retype Password",
                                        isVisible: true,
                                        icon: Icons.lock,
                                        controller: retypePasswordController,
                                      ),
                                      RoundedButton(
                                        text: "Lanjutkan",
                                        color: sPrimaryColor,
                                        press: () {
                                          Get.to(FormPassword());
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