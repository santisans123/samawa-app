import 'package:samawa/import/main/all_import.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final box = GetStorage();

  Widget logoutContainer() => Container(
        width: MediaQuery.of(context).size.width / 1.2,
        padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.03),
        margin: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.width * 0.01,
            horizontal: MediaQuery.of(context).size.width * 0.02),
        child: ElevatedButton(
          child: Text(
            "LOG OUT",
            style: TextStyle(
                color: sPrimaryWhiteColor,
                fontSize: MediaQuery.of(context).size.width * 0.05),
          ),
          onPressed: () => Get.defaultDialog(
            title: 'Confirmation',
            content: Text(
              'Logout?',
              style: TextStyle(color: Colors.grey),
            ),
            onConfirm: () {
              // box.remove('login');
              // Menghapus data login tersimpan
              box.remove('token');
              box.remove('login');
              box.remove('email');

              Get.offAll(IntroSliderPage());
            },
          ),
          style: ElevatedButton.styleFrom(
            primary: sPrimaryColor,
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.03,
              vertical: MediaQuery.of(context).size.width * 0.02,
            ),
            textStyle: TextStyle(
              letterSpacing: 1,
              color: sPrimaryBlueColor,
              fontSize: MediaQuery.of(context).size.width * 0.03,
              fontWeight: FontWeight.bold,
              fontFamily: 'OpenSans',
            ),
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
        child: Scaffold(
      backgroundColor: sPrimaryWhiteColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: sPrimaryColor,
        foregroundColor: sPrimaryWhiteColor,
        title: Text(
          "Profile",
          style: TextStyle(
            fontSize: size.width * 0.06,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.orange,
        child: SizedBox(
          width: size.width,
          height: size.height,
          child: SingleChildScrollView(
            child: Stack(
              children: [
                Align(
                  alignment: AlignmentDirectional.center,
                  child: Container(
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 55,
                          backgroundImage:
                              AssetImage('assets/images/person-male.jpeg'),
                        ),
                        SizedBox(height: 10),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: sPrimaryWhiteColor,
                            onPrimary: sPrimaryJinggaColor,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          child: Text(
                            "Free Member",
                            style: TextStyle(
                              fontSize: size.width * 0.04,
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Ali Assegaf, 25",
                          style: TextStyle(
                            fontSize: size.width * 0.05,
                            fontWeight: FontWeight.bold,
                            color: sPrimaryWhiteColor,
                          ),
                        ),
                        SizedBox(height: 4),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.location_on,
                              size: size.width * 0.05,
                              color: sPrimaryWhiteColor,
                            ),
                            SizedBox(width: 2),
                            Text(
                              "Surabaya",
                              style: TextStyle(
                                fontSize: size.width * 0.045,
                                color: sPrimaryWhiteColor,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: size.height / 3.5,
                  ),
                  child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                    ),
                    child: Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: size.width * 0.08,
                          vertical: size.width * 0.04),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListtileMenuProfile(
                            link: () {
                              Get.to(EditProfile());
                            },
                            icon: Icons.person,
                            text: "Edit Profile",
                          ),
                          ListtileMenuProfile(
                            link: () {
                              Get.to(CompleteBiodata());
                            },
                            icon: Icons.menu_book,
                            text: "Lengkapi Biodata",
                          ),
                          ListtileMenuProfile(
                            link: () {
                              Get.to(FormDataCv());
                            },
                            icon: Icons.my_library_books,
                            text: "Lengkapi CV",
                          ),
                          ListtileMenuProfile(
                            link: () {
                              Get.to(Verification());
                            },
                            icon: Icons.verified_user,
                            text: "Verifikasi KTP",
                          ),
                          ListtileMenuProfile(
                            link: () {
                              Get.to(FormSettings());
                            },
                            icon: Icons.settings,
                            text: "Pengaturan",
                          ),
                          ListtileMenuProfile(
                            link: () {},
                            icon: Icons.fingerprint,
                            text: "Kebijakan dan Privasi",
                          ),
                          ListtileMenuProfile(
                            link: () {},
                            icon: Icons.help,
                            text: "Bantuan",
                          ),
                          logoutContainer()
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
