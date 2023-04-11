import 'package:samawa/import/main/all_import.dart';

class ListInputImage extends StatelessWidget {
  const ListInputImage(
      {Key? key,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    return Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextInputTitle(text: "Foto"),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                    child: ImageInput()),
                Expanded(
                    child: ImageInput()),
                Expanded(
                    child: ImageInput()),
                Expanded(
                    child: ImageInput()),
              ],
            )
          ],
        )
    );
  }
}