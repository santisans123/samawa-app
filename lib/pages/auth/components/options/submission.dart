import 'package:flutter/material.dart';
import 'package:samawa/constants/constant_color.dart';

/// Flutter code sample for [Radio].

enum SubmissionChoice { mandiri, aplikasi }

class SubmissionOptions extends StatefulWidget {
  const SubmissionOptions({super.key});

  @override
  State<SubmissionOptions> createState() => _SubmissionOptionsState();
}

class _SubmissionOptionsState extends State<SubmissionOptions> {
  SubmissionChoice? _character = SubmissionChoice.mandiri;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: const Text('Mandiri'),
          leading: Radio<SubmissionChoice>(
            fillColor:
                MaterialStateColor.resolveWith((states) => sPrimaryColor),
            value: SubmissionChoice.mandiri,
            groupValue: _character,
            onChanged: (SubmissionChoice? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Aplikasi'),
          leading: Radio<SubmissionChoice>(
            fillColor:
                MaterialStateColor.resolveWith((states) => sPrimaryColor),
            value: SubmissionChoice.aplikasi,
            groupValue: _character,
            onChanged: (SubmissionChoice? value) {
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
