import 'package:samawa/import/main/all_import.dart';

class IntroSliderPage extends StatefulWidget {
  @override
  State<IntroSliderPage> createState() => _IntroSliderViewState();
}

class _IntroSliderViewState extends State<IntroSliderPage> {
  List<Slide> slides = [];


  @override
  Widget build(BuildContext context) {
    return IntroSlider(
      // onDonePress: () => Get.to(),
      slides: slides,
      colorActiveDot: sPrimaryColor,
    );
  }

  @override
  void initState() {
    super.initState();
    slides.add(
        Slide(
          title: 'Bingung Mencari Jodoh?',
          description: 'Sedang mencari kriteria jodoh sesuai dengan yang diinginkan.',
          pathImage: 'assets/intro/intro1.png',
          backgroundColor: sPrimaryWhiteColor,
          backgroundOpacity: 0.0,
        )
    );
    slides.add(
      Slide(
          title: 'Temukan Jodohmu Disini',
          description: 'Aplikasi cari jodoh melalui proses taaruf \n#JodohTepat Tanpa Pacaran',
          pathImage: 'assets/intro/intro2.png',
          backgroundColor: sPrimaryWhiteColor,
          backgroundOpacity: 0.0),
    );
    slides.add(
      Slide(
          title: 'Target Menikah Kapan Nih?',
          description: 'Menentukan target menikah mulai dari sekarang.',
          pathImage: 'assets/intro/intro3.png',
          backgroundColor: sPrimaryWhiteColor,
          backgroundOpacity: 0.0
      ),
    );
  }
}