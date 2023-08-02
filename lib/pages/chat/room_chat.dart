import 'package:samawa/import/main/all_import.dart';

class RoomChatPage extends StatefulWidget {
  const RoomChatPage({Key? key}) : super(key: key);
  @override
  State<RoomChatPage> createState() => _RoomChatPageState();
}

class _RoomChatPageState extends State<RoomChatPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: sPrimaryColor,
          leadingWidth: 100,
          leading: InkWell(
            onTap: () {
              Get.to(ChatPage());
            },
            borderRadius: BorderRadius.circular(100),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width: 5),
                  Icon(Icons.arrow_back),
                  SizedBox(width: 5),
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: sPrimaryWhiteColor,
                    backgroundImage: NetworkImage(
                        'https://img.herstory.co.id/articles/archive_20200701/laudya-cynthia-bella-20200701-080515.jpg'),
                  ),
                ],
              ),
            ),
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Sulis Tia Wati',
                style: TextStyle(
                  fontSize: 16,
                ),
              )
            ],
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: Container(
                child: ListView(
                  children: [
                    ItemChat(
                      isSender: true,
                    ),
                    ItemChat(
                      isSender: false,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: context.mediaQueryPadding.bottom),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              width: Get.width,
              color: sPrimaryWhiteColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.emoji_emotions_outlined),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Material(
                    borderRadius: BorderRadius.circular(100),
                    color: sPrimaryColor,
                    child: InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Icon(
                            Icons.send,
                            size: 20,
                            color: sPrimaryWhiteColor,
                          ),
                        )),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

class ItemChat extends StatelessWidget {
  const ItemChat({
    Key? key,
    required this.isSender,
  }) : super(key: key);

  final bool isSender;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 15,
        horizontal: 15,
      ),
      child: Column(
        crossAxisAlignment:
            isSender ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: isSender ? sPrimaryLightGreyColor : sPrimaryYellowColor,
              borderRadius: isSender
                  ? BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                    )
                  : BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
            ),
            padding: EdgeInsets.all(15),
            child: Text(
              'Halo',
            ),
          ),
          SizedBox(height: 5),
          Text('14:18'),
        ],
      ),
      alignment: isSender ? Alignment.centerRight : Alignment.centerLeft,
    );
  }
}
