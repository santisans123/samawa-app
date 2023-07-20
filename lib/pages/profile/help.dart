import 'package:samawa/import/main/all_import.dart';

class HelpPage extends StatefulWidget {
  const HelpPage({Key? key}) : super(key: key);
  @override
  State<HelpPage> createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppbarHeader(title: "Bantuan"),
      body: Container(
        margin: EdgeInsets.symmetric(
            horizontal: size.width * 0.05, vertical: size.width * 0.04),
        color: sPrimaryLightWhiteColor,
        child: ListView(
          children: [
            Container(
              width: size.width,
              child: Padding(
                padding: EdgeInsets.only(top: size.width * 0.02),
                child: Image.asset(
                  "assets/images/faq.png",
                  alignment: Alignment.topCenter,
                  height: size.height / 5,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 25,
                left: 10,
              ),
              width: 300,
              height: 45,
              child: Container(
                child: Text(
                  'FAQ',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 10,
              ),
              width: 300,
              height: 45,
              child: Container(
                child: Text(
                  '1. Dapatkah saya menghapus data saya?',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 10,
              ),
              width: 300,
              height: 1000,
              child: Container(
                child: Text(
                  'Anda sudah menemukan pasangan yang cocok sehingga memutuskan untuk berhenti menggunakan Aplikasi "Samawa"? Anda dapat menghapus profil Anda dari aplikasi dengan mengikuti langkah-langkah ini. Ini akan menghapus profil Anda dari Aplikasi "Samawa" secara publik sehingga tidak lagi terlihat oleh orang lain. Jika Anda berubah pikiran, Anda memiliki waktu 28 hari untuk menghubungi tim kami dan kami dapat mengaktifkan kembali profil Anda untuk Anda. Setelah 28 hari, Anda tidak lagi dapat memperoleh kembali akses ke akun yang dihapus karena informasi Anda akan mulai dihapus dari sistem kami.\n\nJika Anda ingin segera memulai proses penghapusan, Anda berhak meminta agar data Anda dihapus dengan mengirimkan Permintaan Penghapusan Data dengan tim kami. Setelah Anda mengirimkan permintaan ini, prosesnya dapat memakan waktu hingga 30 hari untuk diselesaikan. \n\nNamun, jika profil "Samawa" Anda telah diblokir, kami diharuskan untuk menyimpan data akun untuk memberlakukan pemblokiran tersebut. Oleh karena itu, sejumlah informasi terbatas akan disimpan untuk agar pemblokiran dapat terus dilakukan guna melindungi pengguna Aplikasi "Samawa"',
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.symmetric(horizontal: size.width * 0.08),
        child: RoundedButton(
          text: "Simpan",
          color: sPrimaryColor,
          press: () {
            Get.to(ProfilePage());
          },
        ),
      ),
    );
  }
}
