import 'package:samawa/import/main/all_import.dart';

class CircleHomeButton extends StatefulWidget {
  const CircleHomeButton({Key? key,
    required this.icon,
    required this.color,
    this.sizePadding = 0,
    this.sizeIcon = 0,
  }) : super(key: key);
  final IconData icon;
  final Color color;
  final double? sizePadding;
  final double? sizeIcon;

  @override
  State<CircleHomeButton> createState() => _CircleHomeButtonState();
}

class _CircleHomeButtonState extends State<CircleHomeButton> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(
          vertical:  size.height * 0.02
      ),
      padding: EdgeInsets.all( widget.sizePadding != 0 ?  widget.sizePadding! : 5),
      decoration: BoxDecoration(
          color: widget.color.withOpacity(0.1),
          border: Border.all(color: widget.color),
          borderRadius: const BorderRadius.all(Radius.circular(50)),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: sPrimaryGreyColor.withOpacity(0.6),
                offset: const Offset(0, 0),
                blurRadius: 5
            )
          ]
      ),
      child: Icon(widget.icon, size: widget.sizeIcon != 0 ?  size.width * widget.sizeIcon! : size.width * 0.12, color: widget.color),
    );
  }
}
