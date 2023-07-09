import 'package:samawa/import/main/all_import.dart';

class TextInformation extends StatefulWidget {
  const TextInformation({
    Key? key,
    this.textData,
    this.textTitle,
  }) : super(key: key);

  final String? textData;
  final String? textTitle;

  @override
  State<TextInformation> createState() => _TextInformationState();
}

class _TextInformationState extends State<TextInformation> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
        margin: EdgeInsets.only(top: size.height * 0.011),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: size.height * 0.003),
              child: TextInputTitle(
                text: widget.textTitle!,
                bold: true,
              ),
            ),
            Container(
              width: double.infinity,
              child: Text(widget.textData!,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      fontSize: size.width * 0.035,
                      color: sPrimaryDarkGreyColor)),
            )
          ],
        ));
  }
}
