import 'package:samawa/import/main/all_import.dart';

class PolicyList extends StatefulWidget {
  const PolicyList({Key? key}) : super(key: key);
  @override
  State<PolicyList> createState() => _PolicyListState();
}

class _PolicyListState extends State<PolicyList> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppbarHeader(title: "Syarat dan Ketentuan"),
      body: Container(
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
              Container(
                  child: RichText(
                text: TextSpan(
                    style: TextStyle(color: sPrimaryDarkGreyColor),
                    children: [
                      TextSpan(
                          text:
                              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. \n',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(
                          text:
                              '\nIt has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. \n',
                          style: TextStyle(fontStyle: FontStyle.italic)),
                      TextSpan(
                        text:
                            '\nIt was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
                      )
                    ]),
              )),
            ],
          )),
      bottomNavigationBar: Container(
          margin: EdgeInsets.symmetric(horizontal: size.width * 0.08),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CheckboxButton(text: 'Saya Menyetujui Kebijakan dan Privasi'),
            RoundedButton(
              text: "Lanjutkan",
              color: sPrimaryColor,
              press: () {
                Get.to(Navbar());
              },
            ),
          ],
        ))
      );
  }
}
