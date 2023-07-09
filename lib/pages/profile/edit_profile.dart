import 'package:samawa/import/main/all_import.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);
  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final nameController = TextEditingController();
  final tglController = TextEditingController();
  final noTelpController = TextEditingController();
  final provController = TextEditingController();
  final cityController = TextEditingController();
  final kecController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppbarHeader(title: "Edit Profile"),
      body: Container(
          margin: EdgeInsets.symmetric(
              horizontal: size.width * 0.05, vertical: size.width * 0.04),
          color: sPrimaryLightWhiteColor,
          child: ListView(
            children: [
              RoundedInput(
                textTitle: "Nama",
                hintText: "Nama",
                icon: Icons.person_2,
                controller: nameController,
              ),
              TwoOptions(
                title: "Jenis Kelamin",
                text1: "Perempuan",
                text2: "Laki-Laki",
                icon1: Icons.female,
                icon2: Icons.male,
              ),
              RoundedInput(
                textTitle: "Tanggal Lahir",
                hintText: "Tanggal Lahir",
                icon: Icons.calendar_month,
                controller: tglController,
              ),
              ThreeOptions(
                title: "Status Pernikahan",
                text1: "Lajang",
                text2: "Menikah",
                text3: "Janda/Duda",
              ),
            ],
          )),
      bottomNavigationBar: Container(
          margin: EdgeInsets.symmetric(horizontal: size.width * 0.08),
          child: RoundedButton(
            text: "Simpan",
            color: sPrimaryColor,
            press: () {
              Get.to(ProfilePage());
            },
          )),
    );
  }
}
