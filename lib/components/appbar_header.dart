import 'package:samawa/import/main/all_import.dart';

class AppbarHeader extends StatelessWidget implements PreferredSizeWidget {
  AppbarHeader({
    Key? key,
    required this.title,
    this.linkBack,
  }) : super(key: key);

  final String title;
  final bool? linkBack;

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
            GestureDetector(
              onTap: () {
                linkBack == null ? Get.back() : linkBack;
              },
              child: Icon(Icons.arrow_back, color: sPrimaryWhiteColor),
            ),
            Spacer(),
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: sPrimaryWhiteColor, fontSize: size.width * 0.055),
            ),
            Spacer()
          ],
        ));
  }
}
