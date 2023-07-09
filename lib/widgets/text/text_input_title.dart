import 'package:samawa/import/main/all_import.dart';

class TextInputTitle extends StatefulWidget {
  const TextInputTitle({Key? key, required this.text, this.bold = false})
      : super(key: key);

  final String text;
  final bool? bold;

  @override
  State<TextInputTitle> createState() => _TextInputTitleState();
}

class _TextInputTitleState extends State<TextInputTitle> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      child: Text("${widget.text}",
          style: TextStyle(
              fontSize: size.width * 0.035,
              fontWeight:
                  widget.bold == true ? FontWeight.bold : FontWeight.w500,
              color: sPrimaryBlackColor)),
    );
  }
}
