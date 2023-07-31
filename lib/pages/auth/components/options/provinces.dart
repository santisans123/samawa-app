import 'package:samawa/import/main/all_import.dart';

class ProvincesButton extends StatelessWidget {
  const ProvincesButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('DropdownButton Sample')),
        body: const Center(
          child: Provinsi(),
        ),
      ),
    );
  }
}

const List<String> listProvinsi = <String>[
  'Banten',
  'DKI Jakarta',
  'Jawa Barat',
  'Daerah Istimewa Yogyakarta',
  'Jawa Tengah',
  'Jawa Timur'
];

class Provinsi extends StatefulWidget {
  const Provinsi({super.key});

  @override
  State<Provinsi> createState() => _ProvinsiState();
}

class _ProvinsiState extends State<Provinsi> {
  String dropdownValue = listProvinsi.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(
        Icons.chevron_right,
        // size: size.width * 0.08,
        color: sPrimaryColor,
      ),
      elevation: 16,
      style: const TextStyle(color: sPrimaryDarkGreyColor, fontSize: 16),
      underline: Container(
        height: 2,
        color: sPrimaryColor,
      ),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      items: listProvinsi.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
