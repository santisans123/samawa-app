import 'package:samawa/import/main/all_import.dart';
import 'package:samawa/models/modelsUser.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);
  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  late Datum user = Get.arguments;
  final nameController = TextEditingController();
  final tglController = TextEditingController();
  final noTelpController = TextEditingController();
  final provController = TextEditingController();
  final cityController = TextEditingController();
  final genderController = TextEditingController();
  final UserProvider userProvider = Get.find();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    if (user != null) {
      nameController.text = user.name;
      tglController.text = user.bornday.toString();
      noTelpController.text = user.phone;
      provController.text = user.province;
      cityController.text = user.city;
      genderController.text = user.gender;
    }

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
              GenderOptions(),
              RoundedInput(
                textTitle: "Tanggal Lahir",
                hintText: "Tanggal Lahir",
                icon: Icons.calendar_month,
                controller: tglController,
              ),
              RelationshipStatus(),
            ],
          )),
      bottomNavigationBar: Container(
        margin: EdgeInsets.symmetric(horizontal: size.width * 0.08),
        child: RoundedButton(
          text: "Simpan",
          color: sPrimaryColor,
          press: () {
            userProvider.putUser({
              "name": nameController.text,
              "bornday": tglController.text,
              "gender": genderController.text,
            }).then((response) {
              print("code: ${response.statusCode}");
              print("message: ${response.body}");
              if (response.statusCode == 200) {
                // box.write('access_token', response.body['access_token']);
                Get.offAll(ProfilePage());
              } else {
                Get.snackbar('Error', response.body.toString());
              }
            });
            Get.to(ProfilePage());
          },
        ),
      ),
    );
  }
}
