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
            children: [
              HeaderHome(),
              Container(
                  width: double.infinity,
                  height: size.height / 1.222,
                  decoration: BoxDecoration(
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(50)),
                    image: DecorationImage(
                      image: AssetImage("assets/images/home1.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: size.width * 0.05,
                      vertical: size.height * 0.02
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
                      ButtonHomeBottom()
                    ],
                  ),
                  )
              )
            ],
          )),
    );
  }
}
