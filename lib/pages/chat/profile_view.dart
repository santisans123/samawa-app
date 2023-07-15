import 'package:samawa/import/main/all_import.dart';

class ProfileViewPage extends StatefulWidget {
  const ProfileViewPage({Key? key}) : super(key: key);
  @override
  State<ProfileViewPage> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileViewPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: sPrimaryWhiteColor,
        leadingWidth: 100,
        leading: InkWell(
          onTap: () {
            Get.to(RoomChatPage());
          },
          borderRadius: BorderRadius.circular(100),
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(width: 5),
                Icon(Icons.arrow_back, color: sPrimaryBlackColor),
                SizedBox(width: 5),
                CircleAvatar(
                  radius: 20,
                  backgroundColor: sPrimaryColor,
                  // child: Image.asset("assets/images/person2.jpg"),
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
              'Lorem Ipsum',
              style: TextStyle(
                fontSize: 16,
                color: sPrimaryBlackColor,
              ),
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 25,
              left: 50,
            ),
            width: 300,
            height: 45,
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: sPrimaryLightGreyColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {},
              child: Text(
                "Report",
                style: TextStyle(
                  color: sPrimaryBlackColor,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 15,
              left: 50,
            ),
            width: 300,
            height: 45,
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: sPrimaryLightGreyColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {},
              child: Text(
                "Block",
                style: TextStyle(
                  color: sPrimaryBlackColor,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 15,
              left: 50,
            ),
            width: 300,
            height: 45,
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: sPrimaryLightGreyColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {},
              child: Text(
                "Clear Chat",
                style: TextStyle(
                  color: sPrimaryBlackColor,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
