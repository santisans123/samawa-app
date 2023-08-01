import 'package:flutter/material.dart';
import 'package:samawa/constants/constant_color.dart';

enum GenderChoice { laki_laki, perempuan }

class GenderOptions extends StatefulWidget {
  const GenderOptions({super.key});

  @override
  State<GenderOptions> createState() => _GenderOptionsState();
}

class _GenderOptionsState extends State<GenderOptions> {
  GenderChoice? _character = GenderChoice.laki_laki;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: const Text('Laki-laki'),
          leading: Radio<GenderChoice>(
            fillColor:
                MaterialStateColor.resolveWith((states) => sPrimaryColor),
            value: GenderChoice.laki_laki,
            groupValue: _character,
            onChanged: (GenderChoice? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Perempuan'),
          leading: Radio<GenderChoice>(
            fillColor:
                MaterialStateColor.resolveWith((states) => sPrimaryColor),
            value: GenderChoice.perempuan,
            groupValue: _character,
            onChanged: (GenderChoice? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
      ],
    );
  }
}
