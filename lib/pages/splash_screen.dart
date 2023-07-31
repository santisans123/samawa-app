import 'package:firebase_auth/firebase_auth.dart';
import 'package:samawa/import/main/all_import.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final box = GetStorage();
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  startSplashPage() async {
    var duration = const Duration(seconds: 5);
    return Timer(duration, () {
      if (box.hasData('login')) {
        // print("ada data");
        // box.remove('token');
        // box.remove('login');
        // box.remove('email');
        // GoogleSignIn().signOut();
        // firebaseAuth.signOut();
        // Get.offAll(IntroSliderPage());
        Navigator.of(context)
            .pushReplacement(MaterialPageRoute(builder: (context) => Navbar()));
      } else {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => IntroSliderPage()));
      }
    });
  }

  @override
  void initState() {
    super.initState();
    startSplashPage();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: sPrimaryColor,
        body: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Image.asset(
                    "assets/logos/samawa_logo.png",
                    width: width * 0.9,
                    height: width * 0.6,
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: width * 0.02),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Text("Copyright 2023 All Right Reserved | Samawa",
                    style: TextStyle(
                        fontSize: width * 0.03, color: sPrimaryLightColor)),
              ),
            )
          ],
        ));
  }
}
