import 'package:flutter/material.dart';

class TextEmailField extends StatefulWidget {
  const TextEmailField({Key? key}) : super(key: key);

  @override
  State<TextEmailField> createState() => _TextEmailFieldState();
}

class _TextEmailFieldState extends State<TextEmailField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //Text Field for email
        Container(
          child: TextField(
            decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              hintText: 'name@email.com',
              labelText: 'Email',
              labelStyle: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Colors.black54,
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(10),
              ),
              suffixIcon: Icon(Icons.email_outlined),
            ),
            keyboardType: TextInputType.emailAddress,
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
