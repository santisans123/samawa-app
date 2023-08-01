import 'package:samawa/import/main/all_import.dart';

class InformationData extends StatefulWidget {
  const InformationData({Key? key}) : super(key: key);
  @override
  State<InformationData> createState() => _InformationDataState();
}

class _InformationDataState extends State<InformationData> {
  final nameController = TextEditingController();
  final tglController = TextEditingController();
  final noTelpController = TextEditingController();
  final provController = TextEditingController();
  final cityController = TextEditingController();
  final genderController = TextEditingController();

  final UserProvider userProvider = Get.find();
  final box = GetStorage();

  Widget registerButton() => RoundedButton(
      text: 'Lanjutkan',
      press: () {
        userProvider.register({
          'name': nameController.text,
          'bornday': tglController.text,
          'phone': noTelpController.text,
          'province': provController.text,
          'city': cityController.text,
          'gender': genderController.text,
        }).then((response) {
          print('respon body: ${response.body}');
          if (response.body['access_token'] != null) {
            box.write('token', response.body['access_token']);
            print('token: ${response.body['access_token']}');
            box.write('lanjutkan', true);
            box.write('name', nameController.text);
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => const Navbar()),
              (Route<dynamic> route) => false,
            );
          } else {
            Get.snackbar('Info', 'Gagal Register');
          }
        });
      });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppbarHeader(title: "Informasi Tambahan"),
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

              RoundedInput(
                textTitle: "Tanggal Lahir",
                hintText: "Tanggal Lahir",
                icon: Icons.calendar_month,
                controller: tglController,
              ),
              // RoundedInput(
              //   textTitle: "Provinsi",
              //   isButton: true,
              //   icon: Icons.location_on,
              //   controller: provController,
              // ),
              Text(
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Open Sans',
                  fontWeight: FontWeight.w500,
                ),
                "Provinsi",
              ),

              Provinsi(),
              SizedBox(height: 10),
              Text(
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Open Sans',
                  fontWeight: FontWeight.w500,
                ),
                "Kabupaten/Kota",
              ),
              City(),
              // RoundedInput(
              //   textTitle: "Kecamatan",
              //   isButton: true,
              //   icon: Icons.location_city,
              //   controller: kecController,
              // ),
              SizedBox(height: 8),
              // TwoOptions(
              //   title: "Jenis Kelamin",
              //   text1: "Perempuan",
              //   text2: "Laki-Laki",
              //   icon1: Icons.female,
              //   icon2: Icons.male,
              // ),
              Text(
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Open Sans',
                  fontWeight: FontWeight.w500,
                ),
                "Jenis Kelamin",
              ),
              GenderOptions(),
              ListInputImage(),
            ],
          )),
      bottomNavigationBar: Container(
          margin: EdgeInsets.symmetric(horizontal: size.width * 0.08),
          child: RoundedButton(
            text: "Lanjutkan",
            color: sPrimaryColor,
            press: () {
              Get.to(PolicyList());
            },
          )),
    );
  }
}
