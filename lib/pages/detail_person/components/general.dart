import 'package:samawa/import/main/all_import.dart';

class General extends StatefulWidget {
  const General({Key? key,
  }) : super(key: key);

  @override
  State<General> createState() => _GeneralState();
}

class _GeneralState extends State<General> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GeneralComponents(
              icon: Icons.location_on,
              title: "Asal",
              text: "Sidoarjo, Jawa Timur",
            ),
            GeneralComponents(
              icon: Icons.menu_book,
              title: "Pendidikan Terakhir",
              text: "S1 - Teknik Informatika",
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GeneralComponents(
              icon: Icons.person,
              title: "Status Pernikahan",
              text: "Lajang",
            ),
            GeneralComponents(
              icon: Icons.work,
              title: "pekerjaan",
              text: "UI/UX Design",
            )
          ],
        )
      ],
    );
  }
}
