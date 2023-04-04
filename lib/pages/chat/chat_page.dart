import 'package:samawa/import/main/all_import.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);
  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppbarHeader(
          title: "Chat",
          isBack: false,
          icon1: Icons.calendar_month,
          icon2: Icons.notifications,
          sumTitle: 40,
      ),
      body: Container(
        margin: EdgeInsets.only(top: size.height * 0.005),
          color: sPrimaryLightWhiteColor,
          child: ListView(
            children: [
              ListtileChat(
                  image: "assets/images/home1.png",
                  sumChat: 20,
                  name: "Sulis",
                  description: "Halo Kenalin namaku Sulis"
              ),
              ListtileChat(
                  image: "assets/images/home1.png",
                  sumChat: 20,
                  name: "Tia",
                  description: "Halo Kenalin namaku Tia. Salam Kenal"
              )
            ],
          )),
    );
  }
}
