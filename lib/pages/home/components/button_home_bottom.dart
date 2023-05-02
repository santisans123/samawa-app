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

    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: size.width * 0.05,
          vertical: size.height * 0.02
      ),
      child: Row(
        children: [
          CircleHomeButton(
            color: sPrimaryRedColor,
            icon: Ionicons.close,
            sizeIcon:  0.1,
          ),
          Spacer(),
          CircleHomeButton(
            color: sPrimaryGreenColor,
            icon: Ionicons.chatbubble,
            sizePadding: 12,
            sizeIcon: 0.1,
          ),
          Spacer(),
          CircleHomeButton(
            color: sPrimaryPinkColor,
            icon: Ionicons.heart,
            sizeIcon:  0.1,
          )
        ],
      ),
    );
  }
}
