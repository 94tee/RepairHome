import 'package:flutter/material.dart';
import 'package:repair_home/App/widget/signup_button.dart';
import 'package:repair_home/App/widget/text_cpassword.dart';
import 'package:repair_home/App/widget/text_email.dart';
import 'package:repair_home/App/widget/text_password.dart';
import 'package:repair_home/App/widget/checkbox.dart';
import 'package:repair_home/App/SignIn/sign_in_page.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);
  des() {}
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white70,
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/b_signup.png'), fit: BoxFit.fill)),
          child: Padding(
            padding: const EdgeInsets.all(50.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 150,
                    height: 150,
                    child: Image.asset(
                      'assets/logo.png',
                      color: Colors.indigo[900],
                      fit: BoxFit.contain,
                    ),
                  ),
                  Text(
                    "REPAIR HOME",
                    style: TextStyle(
                        color: Colors.indigo[900],
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                        fontFamily: 'goboldthin'),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  SizedBox(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        "Create New Account",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            fontFamily: 'gotham'),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const TextEmailField(),
                  const SizedBox(
                    height: 10,
                  ),
                  const TextPassField(),
                  const SizedBox(
                    height: 10,
                  ),
                  const TextCPassField(),
                  const SizedBox(
                    height: 20,
                  ),
                  const SignUpButton(),
                  SizedBox(
                    height: 40,
                  ),
                  Column(
                    children: const [
                      Text(
                        ".Or sign up with-",
                        style: TextStyle(
                            color: Colors.black38,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'gotham'),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: Image.asset('assets/google.png'),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: Image.asset('assets/facebook.png'),
                      ),
                      Container(
                        padding: EdgeInsets.all(8),
                        child: Image.asset('assets/twitter.png'),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      Text(
                        ". Already have an account?",
                        style: TextStyle(
                            color: Colors.black38,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'gotham'),
                      ),
                      InkWell(
                        child: Text(
                          'Sign in',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.indigo.shade200,
                          ),
                        ),
                        onTap: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      SignInPage()));
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
