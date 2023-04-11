import 'package:samawa/import/main/all_import.dart';

class KhitbahForm extends StatefulWidget {
  const KhitbahForm({Key? key}) : super(key: key);
  @override
  State<KhitbahForm> createState() => _KhitbahFormState();
}

class _KhitbahFormState extends State<KhitbahForm> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppbarHeader(title: "Syarat dan Ketentuan"),
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
                      "assets/intro/policy_list.png",
                      alignment: Alignment.topCenter,
                      height: size.height / 3,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ],
            )),
        bottomNavigationBar: Container(
            margin: EdgeInsets.symmetric(horizontal: size.width * 0.08),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.end,
              children: [
                RoundedButton(
                  text: "Lanjutkan",
                  color: sPrimaryColor,
                  press: () {
                  },
                ),
              ],
            ))
    );
  }
}
