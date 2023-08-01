import 'package:samawa/import/main/all_import.dart';

class ListPost extends StatefulWidget {
  const ListPost(
      {Key? key,
      required this.img,
      required this.name,
      required this.location,
      required this.gender,
      this.color})
      : super(key: key);

  final String img;
  final String name;
  final String location;
  final String gender;
  final Color? color;

  @override
  State<ListPost> createState() => _ListPostState();
}

class _ListPostState extends State<ListPost> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
        onTap: () {
          Get.to(DetailPersonPage(
            name: widget.name,
            img: widget.img,
            city: widget.location,
            gender: widget.gender,
          ));
        },
        child: Container(
            margin: EdgeInsets.symmetric(
                horizontal: size.width * 0.026, vertical: size.height * 0.007),
            width: size.width / 2.5,
            height: size.height / 3.5,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(15)),
              border: Border.all(color: sPrimaryDarkGreyColor),
              image: DecorationImage(
                image: AssetImage(widget.img),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              margin: EdgeInsets.only(top: size.height * 0.22),
              padding: EdgeInsets.only(
                left: size.width * 0.025,
                right: size.width * 0.025,
                bottom: size.height * 0.015,
              ),
              decoration: BoxDecoration(
                color: sPrimaryDarkGreyColor.withOpacity(0.4),
                borderRadius: const BorderRadius.all(Radius.circular(15)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.name,
                      style: TextStyle(
                          fontSize: size.width * 0.04,
                          color: sPrimaryWhiteColor)),
                  Row(
                    children: [
                      Icon(Ionicons.location,
                          color: sPrimaryWhiteColor, size: size.width * 0.04),
                      Text(
                        widget.location,
                        style: TextStyle(
                            fontSize: size.width * 0.04,
                            color: sPrimaryWhiteColor),
                      )
                    ],
                  )
                ],
              ),
            )));
  }
}
