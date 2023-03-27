import 'package:samawa/import/main/all_import.dart';

class RoundedInputNumber extends StatelessWidget {
  const RoundedInputNumber(
      {Key? key,
      this.hintText,
      this.icon = Icons.person,
      this.link,
      this.controller})
      : super(key: key);
  final String? hintText;
  final IconData icon;
  final void Function(String)? link;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.02, vertical: size.width * 0.002),
      width: size.width * 0.8,
      decoration: BoxDecoration(
          color: sPrimaryWhiteColor,
          borderRadius: const BorderRadius.all(Radius.circular(15)),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.grey.withOpacity(0.6),
                offset: const Offset(0, 0),
                blurRadius: 4)
          ]),
      child: TextFormField(
        controller: controller,
        onFieldSubmitted: link,
        keyboardType: TextInputType.number,
        cursorColor: sPrimaryColor,
        decoration: InputDecoration(
            icon: Icon(
              icon,
              size: size.width * 0.05,
              color: sPrimaryColor,
            ),
            hintText: hintText,
            hintStyle: const TextStyle(fontFamily: 'OpenSans'),
            border: InputBorder.none),
      ),
    );
  }
}
