import 'package:samawa/import/main/all_import.dart';

class ImageCarousel extends StatefulWidget {
  const ImageCarousel({Key? key,
    required this.img
  }) : super(key: key);

  final String img;

  @override
  State<ImageCarousel> createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
        width: double.infinity,
        height: size.height / 1.22,
        decoration: BoxDecoration(
          borderRadius:
          const BorderRadius.vertical(top: Radius.circular(50)),
          image: DecorationImage(
            image: AssetImage(widget.img),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          margin: EdgeInsets.only(
              left: size.width * 0.05,
              right: size.width * 0.05,
              bottom: size.height * 0.13
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Sulis Tia Wati, 25", style: TextStyle(
                  fontSize: size.width * 0.07,
                  color: sPrimaryWhiteColor
              )),
              Row(
                children: [
                  Icon(Ionicons.location, color: sPrimaryWhiteColor),
                  Text("Sidoarjo", style: TextStyle(
                      fontSize: size.width * 0.06,
                      color: sPrimaryWhiteColor
                  ),)
                ],
              ),
            ],
          ),
        )
    );
  }
}
