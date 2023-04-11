import 'package:samawa/import/main/all_import.dart';

class CvPage extends StatefulWidget {
  const CvPage({
    Key? key,
    required this.img,
    required this.name,
    required this.location,
  }) : super(key: key);

  final String img;
  final String name;
  final String location;

  @override
  State<CvPage> createState() => _CvPageState();
}

class _CvPageState extends State<CvPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: sPrimaryColor,
      appBar: AppbarHeader(
          title: "Curriculum Vitae",
        icon2: Icons.download,
      ),
      body: Container(
          padding: EdgeInsets.only(
            right: size.width * 0.05,
            left: size.width * 0.05,
            top: size.width * 0.08,
            bottom: size.width * 0.05,
          ),
          decoration: BoxDecoration(
              color: sPrimaryLightWhiteColor,
              border: Border.all(color: sPrimaryLightGreyColor),
              borderRadius: const BorderRadius.all(Radius.circular(15)),
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: sPrimaryGreyColor.withOpacity(0.6),
                    offset: const Offset(0, 0),
                    blurRadius: 4)
              ]),
          margin: EdgeInsets.symmetric(
              horizontal: size.width * 0.05, vertical: size.width * 0.04),
          child: ListView(
            children: [
              Row(
                children: [
                  Container(
                      width: size.width * 0.2,
                      height: size.width * 0.2,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(widget.img),
                            fit: BoxFit.cover,
                          ),
                          color: sPrimaryWhiteColor,
                          border: Border.all(color: sPrimaryLightGreyColor),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(50)),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                                color: sPrimaryGreyColor.withOpacity(0.6),
                                offset: const Offset(0, 0),
                                blurRadius: 1)
                          ])),
                  Container(
                    margin: EdgeInsets.only(left: size.width * 0.03),
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: size.width * 0.01),
                        child: Text("${widget.name}, 25",
                            style: TextStyle(
                              fontSize: size.width * 0.06,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                      Text("${widget.location}, Jawa Timur",
                          style: TextStyle(
                            fontSize: size.width * 0.04,
                          )),
                    ],
                  ))
                ],
              ),
              Container(
                  margin: EdgeInsets.only(
                    top: size.height * 0.02,
                    bottom: size.height * 0.01,
                  ),
                  child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, "
                      "when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          fontSize: size.width * 0.035,
                          color: sPrimaryDarkGreyColor
                      ))
              ),
              DetailInformation()
            ],
          )),
    );
  }
}
