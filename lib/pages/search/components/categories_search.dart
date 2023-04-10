import 'package:samawa/import/main/all_import.dart';

class CategoriesSearch extends StatefulWidget {
  const CategoriesSearch({Key? key,
    required this.textTitle,
    this.color
  }) : super(key: key);

  final String textTitle;
  final Color? color;

  @override
  State<CategoriesSearch> createState() => _CategoriesSearchState();
}

class _CategoriesSearchState extends State<CategoriesSearch> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return RoundedText(
      margin: EdgeInsets.symmetric(vertical: size.height * 0.015),
        padding: EdgeInsets.symmetric(
            vertical: size.height * 0.01,
          horizontal: size.width * 0.04,
        ),
        color: widget.color == null ? sPrimaryLightWhiteColor : widget.color,
        text: Text(
          widget.textTitle,
          textAlign: TextAlign.start,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: size.width * 0.035,
          ),
        ));
  }
}
