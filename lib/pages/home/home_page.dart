import 'package:samawa/import/main/all_import.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
          color: sPrimaryLightWhiteColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              HeaderHome(),
              Stack(
                children: [
                  CarouselSlider(
                      options: CarouselOptions(
                          height: size.height / 1.22,
                          autoPlay: true,
                          viewportFraction: 1,
                          pauseAutoPlayOnTouch: true),
                      items: [
                        ImageCarousel(img: "assets/images/home1.png"),
                        ImageCarousel(img: "assets/images/person1.jpg"),
                        ImageCarousel(img: "assets/images/person2.jpg"),
                      ]),
                  Container(
                    margin: EdgeInsets.only(top: size.height/1.52),
                    alignment: Alignment.bottomCenter,
                    child: ButtonHomeBottom(),
                  )
                ],
              )
            ],
          )),
    );
  }
}
