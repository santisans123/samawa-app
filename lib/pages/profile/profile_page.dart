import 'package:samawa/import/main/all_import.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
        child: Scaffold(
          backgroundColor: sPrimaryWhiteColor,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.orange,
            foregroundColor: sPrimaryWhiteColor,
            title: Text(
              "Profile",
              style: TextStyle(
                fontSize: 30,
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
                              backgroundImage: AssetImage('assets/images/person3.jpg'),
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
                                  fontSize: 14,
                                ),
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Ali Assegaf, 25",
                              style: TextStyle(
                                fontSize: 18,
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
                                  size: 15.0,
                                  color: sPrimaryWhiteColor,
                                ),
                                SizedBox(width: 2),
                                Text(
                                  "Surabaya",
                                  style: TextStyle(
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
                              ListTile(
                                leading: Container(
                                  width: 30,
                                  height: 30,
                                  child: Icon(Icons.person,
                                      size: 23.0, color: Colors.orange),
                                ),
                                title: Text('Edit Profil'),
                                trailing: Container(
                                    width: 30,
                                    height: 30,
                                    child: const Icon(Icons.chevron_right,
                                        size: 20.0, color: Colors.orange)),
                              ),
                              ListTile(
                                leading: Container(
                                  width: 30,
                                  height: 30,
                                  child: Icon(Icons.menu_book,
                                      size: 23.0, color: Colors.orange),
                                ),
                                title: Text('Lengkapi Biodata'),
                                trailing: Container(
                                    width: 30,
                                    height: 30,
                                    child: const Icon(Icons.chevron_right,
                                        size: 20.0, color: Colors.orange)),
                              ),
                              ListTile(
                                leading: Container(
                                  width: 30,
                                  height: 30,
                                  child: Icon(Icons.my_library_books,
                                      size: 23.0, color: Colors.orange),
                                ),
                                title: Text('Lengkapi CV'),
                                trailing: Container(
                                    width: 30,
                                    height: 30,
                                    child: const Icon(Icons.chevron_right,
                                        size: 20.0, color: Colors.orange)),
                              ),
                              ListTile(
                                leading: Container(
                                  width: 30,
                                  height: 30,
                                  child: Icon(Icons.verified_user,
                                      size: 23.0, color: Colors.orange),
                                ),
                                title: Text('Verifikasi KTP'),
                                trailing: Container(
                                    width: 30,
                                    height: 30,
                                    child: const Icon(Icons.chevron_right,
                                        size: 20.0, color: Colors.orange)),
                              ),
                              ListTile(
                                leading: Container(
                                  width: 30,
                                  height: 30,
                                  child: Icon(Icons.settings,
                                      size: 23.0, color: Colors.orange),
                                ),
                                title: Text('Pengaturan'),
                                trailing: Container(
                                    width: 30,
                                    height: 30,
                                    child: const Icon(Icons.chevron_right,
                                        size: 20.0, color: Colors.orange)),
                              ),
                              ListTile(
                                leading: Container(
                                  width: 30,
                                  height: 30,
                                  child: Icon(Icons.fingerprint,
                                      size: 23.0, color: Colors.orange),
                                ),
                                title: Text('Kebijakan dan Privasi'),
                                trailing: Container(
                                    width: 30,
                                    height: 30,
                                    child: const Icon(Icons.chevron_right,
                                        size: 20.0, color: Colors.orange)),
                              ),
                              ListTile(
                                leading: Container(
                                  width: 30,
                                  height: 30,
                                  child: Icon(Icons.help,
                                      size: 23.0, color: Colors.orange),
                                ),
                                title: Text('Bantuan'),
                                trailing: Container(
                                    width: 30,
                                    height: 30,
                                    child: const Icon(Icons.chevron_right,
                                        size: 20.0, color: Colors.orange)),
                              ),
                              Column(
                                children: [
                                  ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.orange,
                                      onPrimary: sPrimaryWhiteColor,
                                      minimumSize: const Size.fromHeight(39),
                                      elevation: 0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      shadowColor: Colors.black,
                                    ),
                                    child: Text(
                                      "Log Out",
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: sPrimaryWhiteColor,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
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