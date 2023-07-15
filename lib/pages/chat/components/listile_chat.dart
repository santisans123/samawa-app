import 'package:samawa/import/main/all_import.dart';

class ListtileChat extends StatefulWidget {
  const ListtileChat(
      {required this.image,
      required this.sumChat,
      required this.name,
      required this.description,
      Key? key})
      : super(key: key);
  final String image;
  final int sumChat;
  final String name;
  final String description;

  @override
  State<ListtileChat> createState() => _ListtileChatState();
}

class _ListtileChatState extends State<ListtileChat> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        ListTile(
          leading: Container(
              width: size.width * 0.15,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(widget.image),
                    fit: BoxFit.fill,
                  ),
                  color: sPrimaryWhiteColor,
                  border: Border.all(color: sPrimaryLightGreyColor),
                  borderRadius: const BorderRadius.all(Radius.circular(50)),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: sPrimaryGreyColor.withOpacity(0.6),
                        offset: const Offset(0, 0),
                        blurRadius: 1)
                  ])),
          trailing: RoundedText(
              text: Text(
            "${widget.sumChat}",
            textAlign: TextAlign.start,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.width * 0.035,
            ),
          )),
          title: Text(
            widget.name,
            textAlign: TextAlign.start,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: MediaQuery.of(context).size.width * 0.035,
                letterSpacing: 0.5),
          ),
          subtitle: Text(
            widget.description,
            textAlign: TextAlign.start,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.width * 0.035,
            ),
          ),
        ),
        Container(
          width: double.infinity,
          child: Divider(
            thickness: 1,
            color: sPrimaryGreyColor,
          ),
        ),
      ],
    );
  }
}
