import 'package:samawa/import/main/all_import.dart';

class KhitbahForm extends StatefulWidget {
  const KhitbahForm({Key? key}) : super(key: key);
  @override
  State<KhitbahForm> createState() => _KhitbahFormState();
}

class _KhitbahFormState extends State<KhitbahForm> {
  final tglController = TextEditingController();
  final timeController = TextEditingController();
  final waliController = TextEditingController();
  final waController = TextEditingController();
  final noteController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppbarHeader(title: "Jadwalkan Khitbah"),
        body: Container(
            height: double.infinity,
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
                      "assets/intro/khitbah.png",
                      alignment: Alignment.topCenter,
                      height: size.height / 3,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                RoundedInput(
                  textTitle: "Tanggal",
                  hintText: "Tanggal",
                  icon: Icons.calendar_month,
                  controller: tglController,
                ),
                RoundedInput(
                  textTitle: "Waktu",
                  hintText: "Waktu",
                  icon: Icons.timelapse,
                  controller: timeController,
                ),
                TwoOptions(
                    title: "Pendamping", text1: "Mandiri", text2: "Aplikasi"),
                RoundedInput(
                  textTitle: "Nama Wali",
                  hintText: "Nama Wali",
                  icon: Icons.person,
                  controller: waliController,
                ),
                RoundedInput(
                  textTitle: "No Whatsapp",
                  hintText: "No Whatsapp",
                  icon: Icons.phone,
                  type: TextInputType.number,
                  controller: waController,
                ),
                RoundedInput(
                  textTitle: "Catatan",
                  hintText: "Catatan",
                  icon: Icons.note,
                  controller: noteController,
                ),
              ],
            )),
        bottomNavigationBar: Container(
          margin: EdgeInsets.symmetric(horizontal: size.width * 0.08),
          child: RoundedButton(
            text: "Submit",
            color: sPrimaryColor,
            press: () {
              Get.to(SearchPage());
            },
          ),
        ));
  }
}
