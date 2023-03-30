import 'package:samawa/import/main/all_import.dart';

class OpsiGender extends StatelessWidget {
  const OpsiGender(
      {Key? key,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(top: size.height * 0.002),
      width: double.infinity,
      
    );
  }
}