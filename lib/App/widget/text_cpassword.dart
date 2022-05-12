import 'package:flutter/material.dart';

class TextCPassField extends StatefulWidget {
  const TextCPassField({Key? key}) : super(key: key);

  @override
  State<TextCPassField> createState() => _TextCPassFieldState();
}

class _TextCPassFieldState extends State<TextCPassField> {
  bool _secureText = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //Text Field for password
        Container(
          child: TextField(
            obscureText: _secureText,
            decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              hintText: 'repeat password',
              labelText: 'Confirm Password',
              labelStyle: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Colors.black54,
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(10),
              ),
              suffixIcon: IconButton(
                icon: Icon(_secureText
                    ? Icons.visibility_off_outlined
                    : Icons.visibility_outlined),
                onPressed: () {
                  setState(() {
                    _secureText = !_secureText;
                  });
                },
              ),
            ),
          ),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 7,
                offset: Offset(0, 7),
              ),
              BoxShadow(
                color: Colors.white,
                offset: Offset(-7, 0),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
