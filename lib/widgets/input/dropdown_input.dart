import 'package:samawa/import/main/all_import.dart';

class DropdownInput extends StatefulWidget {
  const DropdownInput(
      {Key? key, required this.items, this.textTitle, this.onChanged})
      : super(key: key);

  final String? textTitle;
  final List<String> items;
  final ValueChanged<String>? onChanged;

  @override
  State<DropdownInput> createState() => _DropdownInputState();
}

class _DropdownInputState extends State<DropdownInput> {
// Initial Selected Value
  late String dropdownvalue = widget.items[0];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          widget.textTitle != null
              ? TextInputTitle(text: widget.textTitle!)
              : Container(),
          DropdownButton(
            // Initial Value
            value: dropdownvalue,

            // Down Arrow Icon
            icon: const Icon(Icons.keyboard_arrow_down),

            // Array list of items
            items: widget.items.map((String items) {
              return DropdownMenuItem(
                value: items,
                child: Text(items),
              );
            }).toList(),
            // After selecting the desired option,it will
            // change button value to selected value
            onChanged: (String? newValue) {
              setState(() {
                dropdownvalue = newValue!;
              });
              //supaya bisa memberikan value
              if (widget.onChanged != null) {
                widget.onChanged!(newValue!);
              }
            },
          )
        ]);
  }
}
