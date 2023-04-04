import 'package:samawa/import/main/all_import.dart';

class AppbarHeader extends StatelessWidget implements PreferredSizeWidget {
  AppbarHeader({
    Key? key,
    required this.title,
    this.linkBack,
    this.sumTitle = null,
    this.isBack = true,
    this.icon1 = null,
    this.icon2 = null,
  }) : super(key: key);

  final String title;
  final int? sumTitle;
  final bool? linkBack;
  final bool? isBack;
  final IconData? icon1;
  final IconData? icon2;

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
        padding: EdgeInsets.only(
            top: size.height * 0.05,
            bottom: size.height * 0.02,
            right: size.height * 0.02,
            left: size.height * 0.02),
        decoration: BoxDecoration(
            color: sPrimaryColor,
            border: Border.all(color: sPrimaryLightGreyColor),
            borderRadius:
                const BorderRadius.vertical(bottom: Radius.circular(15)),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: sPrimaryGreyColor.withOpacity(0.6),
                  offset: const Offset(0, 0),
                  blurRadius: 4)
            ]),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            isBack == false ? Container() : GestureDetector(
              onTap: () {
                linkBack == null ? Get.back() : linkBack;
              },
              child: Icon(Icons.arrow_back, color: sPrimaryWhiteColor),
            ),
            isBack == false ?  Container() : Spacer() ,
            Container(
              margin: EdgeInsets.only(
                  left: size.width * 0.05,
                right: size.width * 0.02
              ),
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: sPrimaryWhiteColor, fontSize: size.width * 0.055),
              ),
            ),
            sumTitle != null ?
                RoundedText(
                  color: sPrimaryWhiteColor,
                    text: Text(
                  "$sumTitle +",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.035,
                    color: sPrimaryColor
                  )))
                : Container(),
            Spacer(),
            icon2 != null ?
            Container(
              margin: EdgeInsets.symmetric(horizontal: size.width * 0.01),
                child: Icon(icon2, color: sPrimaryWhiteColor)
            ) : Container(),
            icon1 != null ?
            Container(
                margin: EdgeInsets.symmetric(horizontal: size.width * 0.01),
                child: Icon(icon1, color: sPrimaryWhiteColor)
            ) : Container(),
          ],
        ));
  }
}
