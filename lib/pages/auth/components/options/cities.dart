import 'package:samawa/import/main/all_import.dart';

class CitiesButton extends StatelessWidget {
  const CitiesButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('DropdownButton Sample')),
        body: const Center(
          child: City(),
        ),
      ),
    );
  }
}

const List<String> listCities = <String>[
  'Surabaya',
  'Sidoarjo',
  'Kediri',
  'Gresik',
  'Jombang',
  'Malang',
  'Pasuruan',
  'Jember',
  'Lamongan',
];

class City extends StatefulWidget {
  const City({super.key});

  @override
  State<City> createState() => _CityState();
}

class _CityState extends State<City> {
  String dropdownValue = listCities.first;

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
      items: listCities.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
