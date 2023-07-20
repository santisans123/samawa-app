import 'package:samawa/import/main/all_import.dart';

class PrivacyTerms extends StatefulWidget {
  const PrivacyTerms({Key? key}) : super(key: key);
  @override
  State<PrivacyTerms> createState() => _PrivacyTermsState();
}

class _PrivacyTermsState extends State<PrivacyTerms> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppbarHeader(title: "Kebijakan & Privasi"),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(
                top: 25,
                left: 10,
              ),
              width: 300,
              height: 45,
              child: Container(
                child: Text(
                  'Kebijakan Privasi',
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
                  'Kebijakan privasi menjelaskan bagaimana "Samawa" mengumpulkan, menyimpan, melindungi, dan membagikan informasi Anda, serta dengan siapa kami membagikannya. Kami menyarankan agar Anda membaca Kebijakan ini bersama dengan syarat dan ketentuan penggunaan kami.',
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              margin: EdgeInsets.only(
                left: 10,
              ),
              width: 300,
              height: 150,
              child: Container(
                child: Text(
                  'Saat Anda menikmati aplikasi seluler "Samawa" atau menggunakan produk dan layanan digital kami (seperti fitur atau survei kami), kami mengumpulkan beberapa informasi tentang Anda. Selain itu, Anda dapat memilih untuk menggunakan Aplikasi untuk berbagi informasi dengan para pengguna lainnya, termasuk teman dan kontak Anda ("Para Pengguna"). Kami mungkin juga perlu membagikan informasi Anda sewaktu-waktu.',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 10,
              ),
              width: 300,
              //height: 200,
              child: Container(
                child: Text(
                  '1. Pengumpulan Informasi \n\t\t\t\t a. Informasi Pendaftaran',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 70,
              ),
              width: 300,
              child: Container(
                child: Text(
                  'Saat Anda mengunduh Aplikasi dan membuat akun ("Akun"), kami dapat mengumpulkan informasi tertentu ("Informasi Pendaftaran") tentang Anda, seperti:',
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              margin: EdgeInsets.only(
                left: 80,
              ),
              width: 300,
              child: Container(
                child: Text(
                  '- Nama; \n- Nama pengguna; \n- Alamat email; \n- Nomor telepon seluler; \n- Identitas gender; \n- Tanggal lahir; \n- Preferensi pasangan; \n- Foto-foto; \n- Lokasi; dan \n\nInformasi login untuk akun media sosial yang Anda hubungkan ke Akun "Hijra Taaruf" Anda (ini dapat mencakup, misalnya, akun Facebook dan Instagram Anda).',
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              margin: EdgeInsets.only(
                left: 50,
              ),
              width: 300,
              height: 200,
              child: Container(
                child: Text(
                  'b. Lisensi',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
          margin: EdgeInsets.symmetric(horizontal: size.width * 0.08),
          child: RoundedButton(
            text: "Exit",
            color: sPrimaryColor,
            press: () {
              Get.to(ProfilePage());
            },
          )),
    );
  }
}
