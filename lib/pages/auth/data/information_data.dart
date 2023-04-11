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
  final kecController = TextEditingController();

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
              RoundedInput(
                textTitle: "Provinsi",
                isButton: true,
                icon: Icons.location_on,
                controller: provController,
              ),
              RoundedInput(
                textTitle: "Kabupaten/Kota",
                isButton: true,
                icon: Icons.location_city,
                controller: cityController,
              ),
              RoundedInput(
                textTitle: "Kecamatan",
                isButton: true,
                icon: Icons.location_city,
                controller: kecController,
              ),
              OpsiGender(),
              ListInputImage()
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
