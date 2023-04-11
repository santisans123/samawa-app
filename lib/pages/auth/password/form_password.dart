import 'package:samawa/import/main/all_import.dart';

class FormPassword extends StatefulWidget {
  const FormPassword({Key? key}) : super(key: key);
  @override
  State<FormPassword> createState() => _FormPasswordState();
}

class _FormPasswordState extends State<FormPassword> {
  final passwordController = TextEditingController();
  final retypePasswordController = TextEditingController();

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
                      imgUrl: "assets/intro/password.png",
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: size.height / 1.8,
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
                          height: size.height / 2,
                            margin: EdgeInsets.only(
                                right: size.width * 0.08,
                                left: size.width * 0.08,
                                top: size.width * 0.04),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TitleAuth(
                                  title: "HALO",
                                  description: "Masukkan Password Untuk Melanjutkan",
                                ),
                                Form(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
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
                                          Get.to(InformationData());
                                        },
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