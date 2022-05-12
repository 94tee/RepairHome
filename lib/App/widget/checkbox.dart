import 'package:flutter/material.dart';

class CheckBox extends StatefulWidget {
  const CheckBox({Key? key}) : super(key: key);

  @override
  State<CheckBox> createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  bool _checked = true;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: _checked,
          onChanged: (value) {
            setState(() {
              _checked = !_checked;
            });
          },
        ),
        const Text(
          "Remember me",
          style: TextStyle(color: Colors.black38, fontFamily: 'gotham'),
        ),
      ],
    );
  }
}
