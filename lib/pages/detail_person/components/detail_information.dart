import 'package:samawa/import/main/all_import.dart';

class DetailInformation extends StatefulWidget {
  const DetailInformation({
    Key? key,
  }) : super(key: key);

  @override
  State<DetailInformation> createState() => _DetailInformationState();
}

class _DetailInformationState extends State<DetailInformation> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        TextInformation(
          textTitle: "Visi Pernikahan",
          textData:
              "Lorem Ipsum is simply dummy text of the printing and typesetting",
        ),
        TextInformation(
          textTitle: "Misi Pernikahan",
          textData:
              "1.Lorem Ipsum is simply dummy text of the printing and typesetting \n"
              "2.Lorem Ipsum is simply dummy text of the printing and typesetting",
        ),
        TextInformation(textTitle: "Target Menikah", textData: "2024"),
        TextInformation(
            textTitle: "Kesiapan Menikah Menikah", textData: "InsyaAllah"),
        TextInformation(
            textTitle: "Informasi Keluarga",
            textData: "Anak tunggal dengan keluarga besar")
      ],
    );
  }
}
