import 'package:samawa/import/main/all_import.dart';

class FormSettings extends StatefulWidget {
  const FormSettings({Key? key}) : super(key: key);
  @override
  State<FormSettings> createState() => _FormSettingsState();
}

class _FormSettingsState extends State<FormSettings> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final telpController = TextEditingController();
  final idController = TextEditingController();
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppbarHeader(title: "Pengaturan"),
      body: Container(
          margin: EdgeInsets.symmetric(
              horizontal: size.width * 0.05, vertical: size.width * 0.04),
          color: sPrimaryLightWhiteColor,
          child: ListView(
            children: [
              Container(
                width: size.width,
                child: Padding(
                  padding: EdgeInsets.only(top: size.width * 0.02),
                  child: Image.asset(
                    "assets/images/settings.png",
                    alignment: Alignment.topCenter,
                    height: size.height / 3,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Container(
                child: RoundedInput(
                  textTitle: "Email",
                  hintText: "@email",
                  icon: Icons.email,
                  type: TextInputType.emailAddress,
                  controller: emailController,
                ),
              ),
              Container(
                child: RoundedInput(
                  textTitle: "Password",
                  hintText: "Password",
                  isVisible: true,
                  icon: Icons.lock,
                  controller: passwordController,
                ),
              ),
              Container(
                child: RoundedInput(
                  textTitle: "No Telepon",
                  hintText: "No Telp",
                  type: TextInputType.number,
                  icon: Icons.phone,
                  controller: telpController,
                ),
              ),
              Container(
                child: RoundedInput(
                  textTitle: "User ID",
                  hintText: "12345",
                  type: TextInputType.number,
                  icon: Icons.person,
                  controller: idController,
                ),
              ),
            ],
          )),
      bottomNavigationBar: Container(
        margin: EdgeInsets.symmetric(horizontal: size.width * 0.08),
        child: RoundedButton(
          text: "Simpan",
          color: sPrimaryColor,
          press: () {
            // userProvider.postBiodata({
            //   "description": "as",
            //   "career": "as",
            //   "education": "S1",
            //   "hobby": "as",
            //   "family_info": "anak kedua dari 3 bersasudara"

            // }).then((response) {
            //   print("code: ${response.statusCode}");
            //   print("message: ${response.body}");
            //   if (response.statusCode == 200) {
            //     box.write('access_token', response.body['access_token']);
            //     Get.offAll(ProfilePage());
            //   } else {
            //     Get.snackbar('Error', response.body.toString());
            //   }
            // });
            Get.to(ProfilePage());
          },
        ),
      ),
    );
  }
}
