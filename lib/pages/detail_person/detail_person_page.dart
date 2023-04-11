import 'package:samawa/import/main/all_import.dart';

class DetailPersonPage extends StatefulWidget {
  const DetailPersonPage({Key? key,
    required this.img,
    required this.name,
    required this.city,
  }) : super(key: key);

  final String img;
  final String name;
  final String city;

  @override
  State<DetailPersonPage> createState() => _DetailPersonPageState();
}

class _DetailPersonPageState extends State<DetailPersonPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: ListView(
            children: [
              Container(
                  width: double.infinity,
                  height: size.height / 2.3,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(widget.img),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: size.width * 0.03,
                        vertical: size.height * 0.01
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                           Get.back();
                          },
                          child: Icon(
                            Icons.chevron_left,
                            color: sPrimaryWhiteColor,
                            size: size.width * 0.1,
                          ),
                        ),
                        Spacer() ,

                        Container(
                          margin: EdgeInsets.symmetric(horizontal: size.width * 0.01),
                          child: CircleHomeButton(
                            link: () {
                              Get.to(CvPage(
                                img: widget.img,
                                name: widget.name,
                                location: widget.city,
                              ));
                            },
                            icon: Ionicons.id_card,
                            color: sPrimaryColor,
                            background: sPrimaryLightWhiteColor,
                            sizeIcon: 0.06,
                          ),
                        ),
                        CircleHomeButton(
                          icon: Ionicons.heart_outline,
                          color: sPrimaryColor,
                          background: sPrimaryLightWhiteColor,
                          sizeIcon: 0.06,
                        ),
                      ],
                    )
                  )
              ),
              Stack(
                children: [
                  Container(
                      height: size.height / 1.7,
                      transform: Matrix4.translationValues(0.0, -50.0, 0.0),
                      decoration: BoxDecoration(
                        color: sPrimaryLightWhiteColor,
                        borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
                      ),
                      padding: EdgeInsets.only(
                        top: size.height * 0.02,
                        left: size.width * 0.05,
                        right: size.width * 0.05,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("${widget.name}, 25", style: TextStyle(
                            fontSize: size.width * 0.07,
                            fontWeight: FontWeight.bold,
                          )),
                          Container(
                              margin: EdgeInsets.only(
                                top: size.height * 0.005,
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
                          General(),
                          DetailInformation()
                        ],
                      )
                  ),
                  Container(
                    margin: EdgeInsets.only(right: size.width * 0.12),
                    transform: Matrix4.translationValues(0.0, -100.0, 0.0),
                    alignment: Alignment.topRight,
                    child: CircleHomeButton(
                      icon: Ionicons.chatbox,
                      color: sPrimaryColor,
                      sizePadding: size.width * 0.04,
                      background: sPrimaryLightWhiteColor,
                      sizeIcon: 0.09,
                    ),
                  )
                ],
              )

            ],
          ),
      bottomNavigationBar: Container(
          margin: EdgeInsets.symmetric(horizontal: size.width * 0.08),
          child: RoundedButton(
            text: "Ajukan Khitbah",
            color: sPrimaryColor,
            press: () {
              Get.to(KhitbahForm());
            },
          )),
    );
  }
}
