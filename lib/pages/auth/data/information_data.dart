import 'package:samawa/import/main/all_import.dart';

class InformationData extends StatefulWidget {
  const InformationData({Key? key}) : super(key: key);
  @override
  State<InformationData> createState() => _InformationDataState();
}

class _InformationDataState extends State<InformationData> {
  final tglController = TextEditingController();
  final noTelpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
          appBar: AppbarHeader(title: "Informasi Tambahan"),
          body: Container(
            margin: EdgeInsets.symmetric(
              horizontal: size.width * 0.05,
              vertical: size.width * 0.04
            ),
            color: sPrimaryLightWhiteColor,
            child: ListView(
              children: [
                RoundedInputNumber(
                  hintText: "Nama",
                  icon: Icons.person_2,
                  controller: tglController,
                ),
                RoundedInputNumber(
                  hintText: "Tanggal Lahir",
                  icon: Icons.calendar_month,
                  controller: tglController,
                ),
              ],
            )
          ),
      bottomNavigationBar: RoundedButton(
        text: "Lanjutkan",
        color: sPrimaryColor,
        press: () {
          Get.to(PolicyList());
        },
      ),
        );
  }
}
