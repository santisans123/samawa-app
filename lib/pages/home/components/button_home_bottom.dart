import 'package:samawa/import/main/all_import.dart';

class ButtonHomeBottom extends StatefulWidget {
  const ButtonHomeBottom({Key? key,
  }) : super(key: key);

  @override
  State<ButtonHomeBottom> createState() => _ButtonHomeBottomState();
}

class _ButtonHomeBottomState extends State<ButtonHomeBottom> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Row(
      children: [
        CircleHomeButton(
          color: sPrimaryRedColor,
          icon: Ionicons.close,
        ),
        Spacer(),
        CircleHomeButton(
          color: sPrimaryGreenColor,
          icon: Ionicons.close,
          sizePadding: 10,
          sizeIcon: 0.13,
        ),
        Spacer(),
        CircleHomeButton(
          color: sPrimaryPinkColor,
          icon: Ionicons.heart,
        )
      ],
    );
  }
}
