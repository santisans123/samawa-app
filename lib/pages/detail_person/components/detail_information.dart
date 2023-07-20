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

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(
        children: [
          Container(
            width: 1000,
            child: TextInformation(
              textTitle: "Visi Pernikahan",
              textData:
                  "Lorem Ipsum is simply dummy text of the printing and typesetting",
            ),
          ),
          Container(
            width: 1000,
            child: TextInformation(
              textTitle: "Misi Pernikahan",
              textData:
                  "1.Lorem Ipsum is simply dummy text of the printing and typesetting \n"
                  "2.Lorem Ipsum is simply dummy text of the printing and typesetting",
            ),
          ),
          Container(
            width: 1000,
            child:
                TextInformation(textTitle: "Target Menikah", textData: "2024"),
          ),
          Container(
            width: 1000,
            child: TextInformation(
                textTitle: "Kesiapan Menikah Menikah", textData: "InsyaAllah"),
          ),
          Container(
            width: 1000,
            child: TextInformation(
                textTitle: "Informasi Keluarga",
                textData: "Anak tunggal dengan keluarga besar"),
          ),
        ],
      ),
    );
  }
}
