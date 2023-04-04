import 'package:samawa/import/main/all_import.dart';

class OpsiGender extends StatelessWidget {
  const OpsiGender(
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
          TextInputTitle(text: "Jenis Kelamin"),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                  child: SmallRoundedIcon(
                    icon: Icons.male,
                    textTitle: "Male",
                  )),
              Expanded(
                  child: SmallRoundedIcon(
                    icon: Icons.female,
                    textTitle: "Female",
                  )),
            ],
          )
        ],
      )
    );
  }
}