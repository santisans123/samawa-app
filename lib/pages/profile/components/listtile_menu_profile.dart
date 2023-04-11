import 'package:samawa/import/main/all_import.dart';

class ListtileMenuProfile extends StatefulWidget {
  const ListtileMenuProfile({Key? key,
    required this.link,
    required this.text,
    required this.icon,
  }) : super(key: key);

  final String text;
  final Function() link;
  final IconData icon;

  @override
  State<ListtileMenuProfile> createState() => _ListtileMenuProfileState();
}

class _ListtileMenuProfileState extends State<ListtileMenuProfile> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: widget.link,
      child: ListTile(
        leading: Container(
          width: 30,
          height: 30,
          child: Icon(widget.icon,
              size: 23.0,
              color: sPrimaryColor
          ),
        ),
        title: Text(widget.text),
        trailing: Container(
            width: 30,
            height: 30,
            child: const Icon(Icons.chevron_right,
                size: 20.0, color: Colors.orange)),
      ),
    );
  }
}
