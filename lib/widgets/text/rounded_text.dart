import 'package:samawa/import/main/all_import.dart';

class RoundedText extends StatefulWidget {
  const RoundedText(
      {Key? key,
        required this.text,
        this.color = sPrimaryOrangePastelColor,
        this.padding,
        this.margin,
      })
      : super(key: key);

  final Widget text;
  final Color? color;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;

  @override
  State<RoundedText> createState() => _RoundedTextState();
}

class _RoundedTextState extends State<RoundedText> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      padding: widget.padding == null ? EdgeInsets.symmetric(
        horizontal: size.width * 0.03,
        vertical: size.width * 0.007
      ) : widget.padding,
      margin: widget.margin == null ? null : widget.margin,
      decoration: BoxDecoration(
          color: widget.color,
          border: Border.all(color: sPrimaryLightGreyColor),
          borderRadius: const BorderRadius.all(Radius.circular(15)),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: sPrimaryGreyColor.withOpacity(0.6),
                offset: const Offset(0, 0),
                blurRadius: 4)
          ]),
      child: widget.text
    );
  }
}
