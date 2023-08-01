import 'package:samawa/import/main/all_import.dart';
import 'package:samawa/models/modelsKhitbah.dart';

class KhitbahPage extends StatefulWidget {
  const KhitbahPage({Key? key}) : super(key: key);
  @override
  State<KhitbahPage> createState() => _KhitbahPageState();
}

class _KhitbahPageState extends State<KhitbahPage> {
  final UserProvider userProvider = Get.find();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppbarHeader(
        title: "Pengajuan Khitbah",
        isBack: false,
        icon1: Icons.calendar_month,
        icon2: Icons.notifications,
        sumTitle: 40,
      ),
      body: FutureBuilder<KhitbahData>(
        future: userProvider.getSubmission(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
                itemCount: snapshot.data!.id,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 75,
                    color: Colors.white,
                    child: Center(
                        // child: Text(snapshot.data!.54r),
                        ),
                  );
                });
          } else if (snapshot.hasError) {
            return Text(snapshot.error.toString());
          }
          // By default show a loading spinner.
          return const CircularProgressIndicator();
        },
      ),
    );
  }
}
