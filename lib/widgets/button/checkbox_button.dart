import 'package:samawa/import/main/all_import.dart';

class CheckboxButton extends StatefulWidget {
  const CheckboxButton({Key? key, this.text}) : super(key: key);
  final String? text;

  @override
  State<CheckboxButton> createState() => _CheckboxButtonState();
}

class _CheckboxButtonState extends State<CheckboxButton> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
        height: size.width * 0.06,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Checkbox(
                value: isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value!;
                  });
                },
              ),
              TextButton(
                  style: TextButton.styleFrom(
                    minimumSize: Size.zero, // Set this
                    padding: EdgeInsets.zero, // and this
                  ),
                  onPressed: () {},
                  child: Text(
                    "${widget.text}",
                    style: TextStyle(fontSize: 15),
                  ))
            ]));
  }
}
