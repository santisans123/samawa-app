import 'package:samawa/import/main/all_import.dart';

class Upside extends StatelessWidget {
  Upside({Key? key, required this.imgUrl}) : super(key: key);
  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Stack(
      children: [
        Container(
          width: size.width,
          child: Padding(
            padding: EdgeInsets.only(top: size.width * 0.1),
            child: Image.asset(
              imgUrl,
              alignment: Alignment.topCenter,
              height: size.height / 2,
              fit: BoxFit.contain,
            ),
          ),
        ),
        Positioned(
          right: size.width * 0.04,
          top: size.width * 0.04,
          child: Image.asset(
            "assets/logos/samawa_logo.png",
            scale: 3,
            width: size.width * 0.3,
          ),
        ),
      ],
    );
  }
}