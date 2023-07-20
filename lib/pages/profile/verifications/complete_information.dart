import 'package:samawa/import/main/all_import.dart';

class CompleteInfo extends StatefulWidget {
  const CompleteInfo({Key? key}) : super(key: key);
  @override
  State<CompleteInfo> createState() => _CompleteInfoState();
}

class _CompleteInfoState extends State<CompleteInfo> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppbarHeader(title: "Lengkapi Informasi e-KTP"),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 25,
              left: 50,
            ),
            width: 300,
            height: 45,
            child: Text('test'),
          ),
        ],
      ),
      bottomNavigationBar: Container(
          margin: EdgeInsets.symmetric(horizontal: size.width * 0.08),
          child: RoundedButton(
            text: "Next",
            color: sPrimaryColor,
            press: () {
              Get.to(ProfilePage());
            },
          )),
    );
  }
}
