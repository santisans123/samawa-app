import 'package:samawa/import/main/all_import.dart';

class KhitbahForm extends StatefulWidget {
  const KhitbahForm({Key? key}) : super(key: key);
  @override
  State<KhitbahForm> createState() => _KhitbahFormState();
}

class _KhitbahFormState extends State<KhitbahForm> {
  final dateController = TextEditingController();
  final timeController = TextEditingController();
  final guardianNameController = TextEditingController();
  final guardianPhoneController = TextEditingController();
  final notesController = TextEditingController();
  final UserProvider userProvider = Get.find();
  final box = GetStorage();

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
                controller: dateController,
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
                controller: guardianNameController,
              ),
              RoundedInput(
                textTitle: "No Whatsapp",
                hintText: "No Whatsapp",
                icon: Icons.phone,
                type: TextInputType.number,
                controller: guardianPhoneController,
              ),
              RoundedInput(
                textTitle: "Catatan",
                hintText: "Catatan",
                icon: Icons.note,
                controller: notesController,
              ),
            ],
          )),
      bottomNavigationBar: Container(
        margin: EdgeInsets.symmetric(horizontal: size.width * 0.08),
        child: RoundedButton(
          text: "Submit",
          color: sPrimaryColor,
          press: () {
            userProvider.postKhitbah({
              'to': "1",
              'guardianName': guardianNameController.text,
              'guardianPhone': guardianPhoneController.text,
              'notes': notesController.text,
              'date': dateController.text,
              'time': timeController.text,
            }).then((response) {
              print("code: ${response.statusCode}");
              print("message: ${response.body}");
              if (response.statusCode == 200) {
                box.write('access_token', response.body['access_token']);
                Get.offAll(SearchPage());
              } else {
                Get.snackbar('Error', response.body.toString());
              }
            });
            //Get.to(SearchPage());
          },
        ),
      ),
    );
  }
}
