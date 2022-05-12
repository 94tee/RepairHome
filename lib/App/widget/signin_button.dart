import 'dart:html';

import 'package:flutter/material.dart';

class SignInButton extends StatefulWidget {
  const SignInButton({Key? key}) : super(key: key);

  @override
  State<SignInButton> createState() => _SignInButtonState();
}

class _SignInButtonState extends State<SignInButton> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                'Sign In',
                style: TextStyle(
                    color: Colors.white, fontSize: 17, fontFamily: 'gotham'),
              ),
              style: ButtonStyle(
                // textStyle:
                //     MaterialStateProperty.all(TextStyle(color: Colors.pink)),
                backgroundColor:
                    MaterialStateProperty.all(const Color(0xffff1f319d)),
              ),
            ),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.indigo.shade900,
                  blurRadius: 5,
                  offset: Offset(0, 5),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
