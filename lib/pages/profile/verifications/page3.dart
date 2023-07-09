import 'package:samawa/import/main/all_import.dart';

class Verification3 extends StatefulWidget {
  const Verification3({Key? key}) : super(key: key);
  @override
  State<Verification3> createState() => _Verification3State();
}

class _Verification3State extends State<Verification3> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppbarHeader(title: "Verifikasi Wajah"),
      body: Container(
        child: Text('Blank Page'),
      ),
      bottomNavigationBar: Container(
          margin: EdgeInsets.symmetric(horizontal: size.width * 0.08),
          child: RoundedButton(
            text: "Next",
            color: sPrimaryColor,
            press: () {
              Get.to(Verification4());
            },
          )),
    );
  }
}
