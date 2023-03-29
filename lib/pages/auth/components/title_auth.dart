import 'package:samawa/import/main/all_import.dart';

class TitleAuth extends StatelessWidget {
  const TitleAuth(
      {Key? key,
        required this.title,
        required this.description,
        })
      : super(key: key);
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.only(bottom: size.width * 0.015),
          child: Text(
            "$title",
            style: TextStyle(
                color: sPrimaryColor,
                fontFamily: 'OpenSans',
                fontSize: 25,
                fontWeight: FontWeight.w600),
          ),
        ),
        Container(
            margin: EdgeInsets.only(bottom: size.height * 0.01),
            child: Text(
              "$description",
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'OpenSans',
                  fontSize: 13,
                  fontWeight: FontWeight.w600),
            )),
      ],
    );
  }
}