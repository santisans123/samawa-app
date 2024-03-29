import 'package:samawa/import/main/all_import.dart';

class Verification1 extends StatefulWidget {
  const Verification1({Key? key}) : super(key: key);
  @override
  State<Verification1> createState() => _Verification1State();
}

class _Verification1State extends State<Verification1> {
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
              Get.to(Verification2());
            },
          )),
    );
  }
}
