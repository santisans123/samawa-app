import 'package:samawa/import/main/all_import.dart';

class SmallRoundedIcon extends StatefulWidget {
  const SmallRoundedIcon({
    Key? key,
    required this.textTitle,
    this.icon,
  }) : super(key: key);

  final String textTitle;
  final IconData? icon;

  @override
  State<SmallRoundedIcon> createState() => _SmallRoundedIconState();
}

class _SmallRoundedIconState extends State<SmallRoundedIcon> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
        margin: EdgeInsets.symmetric(
            vertical: size.height * 0.01,
          horizontal: size.height * 0.01
        ),
        padding: EdgeInsets.symmetric(
            horizontal: size.width * 0.02,
          vertical: size.width * 0.02
        ),
        width: double.infinity,
        decoration: BoxDecoration(
            color: sPrimaryWhiteColor,
            border: Border.all(color: sPrimaryLightGreyColor),
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: sPrimaryGreyColor.withOpacity(0.6),
                  offset: const Offset(0, 0),
                  blurRadius: 4)
            ]),
        child: Row(
          children: [
            widget.icon != null ? Icon(
              widget.icon,
              size: size.width * 0.06,
              color: sPrimaryColor,
            ) : Container(),
            Expanded(
            child: Container(
              alignment: Alignment.center,
              child: Text(
                "${widget.textTitle}",
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: size.width * 0.045, color: sPrimaryDarkGreyColor),
              )
            )
            )
          ],
        ));
  }
}
