import 'package:samawa/import/main/all_import.dart';

class SearchBarWidget extends StatelessWidget {
  SearchBarWidget({
    Key? key,
    this.onChanged,
  }) : super(key: key);

  final Function(String val)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.width * 0.075,
      margin: EdgeInsets.only(
        top: MediaQuery.of(context).size.width * 0.01,
        right: MediaQuery.of(context).size.width * 0.01,
        left: MediaQuery.of(context).size.width * 0.01,
      ),
      decoration: BoxDecoration(
          color: Color(0x00000000),
          borderRadius: const BorderRadius.all(Radius.circular(24)),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.grey.withOpacity(0.6),
                offset: const Offset(0, 0),
                blurRadius: 8)
          ]),
      child: TextField(
        autofocus: false,
        onSubmitted: (val) {},
        onChanged: onChanged,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.01,
                vertical: MediaQuery.of(context).size.width * 0.01),
            fillColor: Colors.white,
            filled: true,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide.none),
            hintText: "Search...",
            prefixIcon: const Icon(Icons.search)),
      ),
    );
  }
}
