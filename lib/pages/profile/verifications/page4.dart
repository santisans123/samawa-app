import 'package:samawa/import/main/all_import.dart';

class Verification4 extends StatefulWidget {
  const Verification4({Key? key}) : super(key: key);
  @override
  State<Verification4> createState() => _Verification4State();
}

class _Verification4State extends State<Verification4> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppbarHeader(title: "Verifikasi Wajah"),
      body: Container(
          margin: EdgeInsets.symmetric(
              horizontal: size.width * 0.05, vertical: size.width * 0.04),
          color: sPrimaryLightWhiteColor,
          child: ListView(
            children: [
              SizedBox(height: 15),
              Container(
                child: Text(
                  "Step 3/4",
                  style: TextStyle(
                    color: sPrimaryJinggaColor,
                    fontSize: 16.0,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                child: Text(
                  "Ambil foto e-KTP asli Anda",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: size.width,
                child: Padding(
                  padding: EdgeInsets.only(top: size.width * 0.01),
                  child: Image.asset(
                    "assets/images/idcard.png",
                    alignment: Alignment.topCenter,
                    height: size.height / 5,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(color: sPrimaryDarkGreyColor),
                    children: [
                      TextSpan(
                        text: 'Siapkan e-KTP asli Anda \n\n\n',
                      ),
                      TextSpan(
                        text: 'Ambil foto e-KTP dalam posisi landscape \n\n\n',
                      ),
                      TextSpan(
                        text:
                            'Pastikan e-KTP Anda dalam kondisi baik, tidak rusak, dan datanya terlihat jelas \n\n\n',
                      ),
                      TextSpan(
                        text:
                            'Ambil foto e-KTP Anda dan pastikan untuk tidak menggunakan fitur flash \n\n\n',
                      ),
                    ],
                  ),
                ),
              )
            ],
          )),
      bottomNavigationBar: Container(
          margin: EdgeInsets.symmetric(horizontal: size.width * 0.08),
          child: RoundedButton(
            text: "Next",
            color: sPrimaryColor,
            press: () {
              Get.to(Verification5());
            },
          )),
    );
  }
}
