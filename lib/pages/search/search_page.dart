import 'package:samawa/import/main/all_import.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);
  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: sPrimaryLightWhiteColor,
      body: Container(
          margin: EdgeInsets.only(top: size.height * 0.005),
          padding: EdgeInsets.only(
            right: size.width * 0.04,
            left: size.width * 0.04,
            bottom: size.width * 0.04,
          ),
          child: ListView(
            children: [
              SearchBar(),
              Row(
                children: [
                  CategoriesSearch(
                    textTitle: "Sedang hits",
                    color: sPrimaryOrangePastelColor,
                  ),
                  Spacer(),
                  CategoriesSearch(textTitle: "Sesuai Kriteriamu"),
                  Spacer(),
                  CategoriesSearch(textTitle: "user Baru"),
                ],
              ),
              Align(
                  alignment: Alignment.topCenter,
                  child: Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      ListPost(
                        img: "assets/images/home1.png",
                        name: "Sanskuy",
                        location: "Sidoarjo",
                      ),
                      ListPost(
                        img: "assets/images/person2.jpg",
                        name: "Siti Susanti",
                        location: "Surabaya",
                      ),
                      ListPost(
                        img: "assets/images/person2.jpg",
                        name: "Siti Sans",
                        location: "Surabaya",
                      ),
                    ],
                  ))
            ],
          )),
    );
  }
}
