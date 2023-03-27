import 'package:samawa/import/main/all_import.dart';

class UnderPart extends StatelessWidget {
  const UnderPart(
      {Key? key,
        this.title,
        required this.navigatorText,
        required this.onTap})
      : super(key: key);
  final String? title;
  final String navigatorText;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.only(top: size.height * 0.02),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            title != null ?
            Text(
              title!,
              style: const TextStyle(
                  fontFamily: 'OpenSans',
                  fontSize: 13,
                  color: Colors.grey,
                  fontWeight: FontWeight.w600),
            ) : Container(),
            const SizedBox(
              width: 20,
            ),
            InkWell(
              onTap: () {
                onTap();
              },
              child: Text(
                navigatorText,
                style: const TextStyle(
                    color: sPrimaryColor,
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Opensans'),
              ),
            )
          ],
        )
    );
  }
}