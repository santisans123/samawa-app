import 'package:samawa/import/main/all_import.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);
  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  var dataMember = <dynamic>[];
  final UserProvider userProvider = Get.find();

  void _loadMember() {
    userProvider.getmember().then((response) {
      final data = response.body;
      print(response.statusCode);
      print("data api: ${response.body}");
      setState(() {
        var todo = data['data'];
        dataMember = todo;
      });
    });
  }

  List<Widget> listMember() {
    final list = <Widget>[];
    if (dataMember.isNotEmpty) {
      list.addAll(dataMember.map(
        (e) => ListPost(
          img: "assets/images/home1.png",
          name: '${e['name']}',
          location: '${e['city']}',
          gender: '${e['gender']}',
        ),
      ));
    }
    return list;
  }

  @override
  void initState() {
    _loadMember();
  }

  @override
  Widget build(BuildContext context) {
    _loadMember();
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
                    children: listMember(),

                    // ListPost(
                    //   img: "assets/images/home1.png",
                    //   name: "Sanskuy",
                    //   location: "Sidoarjo",
                    // ),
                    // ListPost(
                    //   img: "assets/images/person2.jpg",
                    //   name: "Siti Susanti",
                    //   location: "Surabaya",
                    // ),
                    // ListPost(
                    //   img: "assets/images/person2.jpg",
                    //   name: "Siti Sans",
                    //   location: "Surabaya",
                    // ),
                  ))
            ],
          )),
    );
  }
}
