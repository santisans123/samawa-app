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
                textTitle: "Misi",
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
              Get.to(PolicyList());
            },
          )),
    );
  }
}
