import 'package:samawa/import/main/all_import.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    Key? key,
    required this.press,
    this.textColor = sPrimaryWhiteColor,
    required this.text,
    this.color = sPrimaryColor,
    this.logo,
  }) : super(key: key);
  final String text;
  final Function() press;
  final Color? textColor;
  final Color? color;
  final String? logo;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(top: size.height * 0.002),
      width: double.infinity,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: newElevatedButton(size),
      ),
    );
  }

  Widget _text() {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(color: textColor, fontSize: 17),
    );
  }

  Widget _icon(Size size) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: size.width * 0.01),
        child: Image.asset(
          "$logo",
          width: size.width * 0.04,
          height: size.width * 0.04,
        ));
  }

  Widget newElevatedButton(Size size) {
    return ElevatedButton(
      child: logo != null
          ? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [_icon(size), _text()],
            )
          : _text(),
      onPressed: press,
      style: ElevatedButton.styleFrom(
          primary: color,
          backgroundColor: color,
          padding: EdgeInsets.symmetric(vertical: size.height * 0.01),
          textStyle: TextStyle(
              letterSpacing: 1,
              color: textColor,
              fontSize: 12,
              fontWeight: FontWeight.bold,
              fontFamily: 'OpenSans')),
    );
  }
}
