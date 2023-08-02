import 'package:flutter/material.dart';
import 'package:samawa/constants/constant_color.dart';

enum RelationshipChoice { lajang, menikah, duda_janda }

class RelationshipStatus extends StatefulWidget {
  const RelationshipStatus({super.key});

  @override
  State<RelationshipStatus> createState() => _RelationshipStatusState();
}

class _RelationshipStatusState extends State<RelationshipStatus> {
  RelationshipChoice? _character = RelationshipChoice.lajang;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: const Text('Lajang'),
          leading: Radio<RelationshipChoice>(
            fillColor:
                MaterialStateColor.resolveWith((states) => sPrimaryColor),
            value: RelationshipChoice.lajang,
            groupValue: _character,
            onChanged: (RelationshipChoice? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Menikah'),
          leading: Radio<RelationshipChoice>(
            fillColor:
                MaterialStateColor.resolveWith((states) => sPrimaryColor),
            value: RelationshipChoice.menikah,
            groupValue: _character,
            onChanged: (RelationshipChoice? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Duda/Janda'),
          leading: Radio<RelationshipChoice>(
            fillColor:
                MaterialStateColor.resolveWith((states) => sPrimaryColor),
            value: RelationshipChoice.duda_janda,
            groupValue: _character,
            onChanged: (RelationshipChoice? value) {
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
