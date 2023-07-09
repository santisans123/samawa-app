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
              Container(
                width: size.width,
                child: Padding(
                  padding: EdgeInsets.only(top: size.width * 0.02),
                  child: Image.asset(
                    "assets/images/verification.png",
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
                            'Lepaskan kacamata, masker, atau penutup wajah lainnya \n\n\n',
                      ),
                      TextSpan(
                        text:
                            'Posisikan handphone setinggi mata dalam kondisi pencahayaan yang baik \n\n\n',
                      ),
                      TextSpan(
                        text:
                            'Pastikan wajah Anda berada dalam frame dan siapkan senyum terbaik Anda \n\n\n',
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
