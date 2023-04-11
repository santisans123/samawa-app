import 'package:samawa/import/main/all_import.dart';

class GeneralComponents extends StatefulWidget {
  const GeneralComponents({Key? key,
    required this.title,
    required this.text,
    required this.icon,
  }) : super(key: key);

  final String title;
  final String text;
  final IconData icon;

  @override
  State<GeneralComponents> createState() => _GeneralComponentsState();
}

class _GeneralComponentsState extends State<GeneralComponents> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(
          vertical: size.height * 0.01,
        horizontal: size.width * 0.01
      ),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(
              right: size.width * 0.02,
            ),
            child: Icon(
                widget.icon,
                size: size.width * 0.07,
                color: sPrimaryColor
            ),
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.title,style: TextStyle(
                  fontSize: size.width * 0.04,
                  fontWeight: FontWeight.bold
              )),
              Text(widget.text),
            ],
          )
        ],
      ),
    );
  }
}
