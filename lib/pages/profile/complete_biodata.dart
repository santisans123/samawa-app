import 'package:samawa/import/main/all_import.dart';

class CompleteBiodata extends StatefulWidget {
  const CompleteBiodata({Key? key}) : super(key: key);
  @override
  State<CompleteBiodata> createState() => _CompleteBiodataState();
}

class _CompleteBiodataState extends State<CompleteBiodata> {
  final aboutMeController = TextEditingController();
  final jobController = TextEditingController();
  final eduController = TextEditingController();
  final hobbyController = TextEditingController();
  final aboutFamController = TextEditingController();
  final UserProvider userProvider = Get.find();
  final box = GetStorage();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppbarHeader(title: "Lengkapi Biodata"),
      body: Container(
          margin: EdgeInsets.symmetric(
              horizontal: size.width * 0.05, vertical: size.width * 0.04),
          color: sPrimaryLightWhiteColor,
          child: ListView(
            children: [
              RoundedInput(
                textTitle: "Tentang Saya",
                hintText: "Deskripsikan Tentang Diri Anda Minimal 20 Karakter",
                controller: aboutMeController,
              ),
              RoundedInput(
                textTitle: "Pekerjaan",
                icon: Icons.home_work,
                controller: jobController,
              ),
              RoundedInput(
                textTitle: "Pendidikan Terakhir",
                // isButton: true,
                icon: Icons.school,
                controller: eduController,
              ),
              RoundedInput(
                textTitle: "Hobi",
                icon: Icons.thumb_up,
                controller: hobbyController,
              ),
              RoundedInput(
                textTitle: "Informasi Keluarga",
                hintText: "2 bersaudara.",
                controller: aboutFamController,
              ),
            ],
          )),
      bottomNavigationBar: Container(
          margin: EdgeInsets.symmetric(horizontal: size.width * 0.08),
          child: RoundedButton(
            text: "Lanjutkan",
            color: sPrimaryColor,
            press: () {
              userProvider.postBiodata({
                "description": aboutMeController.text,
                "career": jobController.text,
                "education": eduController.text,
                "hobby": hobbyController.text,
                "family_info": aboutFamController.text
              }).then((response) {
                print("code: ${response.statusCode}");
                print("message: ${response.body}");
                if (response.statusCode == 200) {
                  box.write('access_token', response.body['access_token']);
                  Get.offAll(ProfilePage());
                } else {
                  Get.snackbar('Error', response.body.toString());
                }
              });
              Get.to(ProfilePage());
            },
          )),
    );
  }
}
