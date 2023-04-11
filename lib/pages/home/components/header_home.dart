import 'package:samawa/import/main/all_import.dart';

class HeaderHome extends StatefulWidget {
  const HeaderHome({Key? key,
  }) : super(key: key);

  @override
  State<HeaderHome> createState() => _HeaderHomeState();
}

class _HeaderHomeState extends State<HeaderHome> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.only(
        right: size.width * 0.04,
        left: size.width * 0.04,
        top: size.width * 0.1,
        bottom: size.width * 0.04,
      ),
      child: Row(
        children: [
          Container(
            width: size.width * 0.3,
            child: Image.asset("assets/logos/logo_samawa_pink.png"),
          ),
          Spacer(),
          Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: sPrimaryWhiteColor,
                  border: Border.all(color: sPrimaryLightGreyColor),
                  borderRadius:
                  const BorderRadius.all(Radius.circular(10)),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: sPrimaryGreyColor.withOpacity(0.6),
                        offset: const Offset(0, 0),
                        blurRadius: 4)
                  ]),
              child: Icon(Ionicons.filter)),
        ],
      ),
    );
  }
}
