import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:samawa/import/main/all_import.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  GetStorage.init();
  Get.put(UserProvider());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Future<Widget> userSignIn() async {
    FirebaseAuth firebaseAuth = FirebaseAuth.instance;

    User? user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      // DocumentSnapshot userData = await FirebaseFirestore.instance
      //     .collection('users')
      //     .doc(user.uid)
      //     .get();
      // UserModel userModel = UserModel.fromJson(userData);
      // GoogleSignIn().signOut();
      // firebaseAuth.signOut();
      return const HomePage();
      // return SplashScreen();
    } else {
      return SplashScreen();
    }
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // home: Scaffold(
      //   body: SplashScreen(),
      // ),
      home: FutureBuilder(
        future: userSignIn(),
        builder: (context, AsyncSnapshot<Widget> snapshot) {
          if (snapshot.hasData) {
            return snapshot.data!;
          } else {
            return SplashScreen();
          }
        },
      ),
    );
  }
}
