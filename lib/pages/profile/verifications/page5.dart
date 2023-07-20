import 'package:samawa/import/main/all_import.dart';

class Verification5 extends StatefulWidget {
  const Verification5({Key? key}) : super(key: key);
  @override
  State<Verification5> createState() => _Verification5State();
}

class _Verification5State extends State<Verification5> {
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
              Get.to(CompleteInfo());
            },
          )),
    );
  }
}
