import 'package:samawa/import/main/all_import.dart';

class FormDataCv extends StatefulWidget {
  const FormDataCv({Key? key}) : super(key: key);
  @override
  State<FormDataCv> createState() => _FormDataCvState();
}

class _FormDataCvState extends State<FormDataCv> {
  final visiController = TextEditingController();
  final misiController = TextEditingController();
  final essayController = TextEditingController();

  final UserProvider userProvider = Get.find();
  final box = GetStorage();

  var kesiapanMenikah= [
    "Siap",
    "InsyaAllah",
    "Belum"
  ];

  var statusBeragama= [
    "Taat",
    "InsyaAllah",
    "Perlu Belajar",
    "Belum"
  ];

  var mahzab= [
    "Syafii",
    "Maliki",
    "Hanafi",
    "Hambali"
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppbarHeader(title: "Lengkapi CV"),
      body: Container(
          margin: EdgeInsets.symmetric(
              horizontal: size.width * 0.05, vertical: size.width * 0.04),
          color: sPrimaryLightWhiteColor,
          child: ListView(
            children: [
              DropdownInput(
                textTitle: "Kesiapan Menikah",
                items: kesiapanMenikah,
              ),
              RoundedInput(
                textTitle: "Visi",
                hintText: "Visi",
                icon: Icons.description,
                controller: visiController,
              ),
              RoundedInput(
                textTitle: "Misi",
                maxLine: 4,
                type: TextInputType.multiline,
                controller: misiController,
              ),
              RoundedInput(
                textTitle: "Essay",
                hintText: "Essay Diri Minimal 50 karakter",
                maxLine: 4,
                type: TextInputType.multiline,
                controller: essayController,
              ),
              DropdownInput(
                textTitle: "Status Beragama",
                items: statusBeragama,
              ),
              DropdownInput(
                textTitle: "Mahzab",
                items: mahzab,
              ),

            ],
          )),
      bottomNavigationBar: Container(
          margin: EdgeInsets.symmetric(horizontal: size.width * 0.08),
          child: RoundedButton(
            text: "Lanjutkan",
            color: sPrimaryColor,
            press: () {

              userProvider.postCV({
                'marriage_prep': "tes",
                'vission': visiController.text,
                'mission': misiController.text,
                'essay': essayController.text,
                'religion_status': "test",
                'mahdzab': "test",
                'marriage_target': "test",
                'marital_status': "test",
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
            },
          )),
    );
  }
}
