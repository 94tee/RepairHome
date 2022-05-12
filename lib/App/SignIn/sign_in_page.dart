import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:repair_home/App/SignUp/sign_up_page.dart';
import 'package:repair_home/App/widget/signin_button.dart';
import 'package:repair_home/App/widget/text_email.dart';
import 'package:repair_home/App/widget/text_password.dart';
import 'package:repair_home/App/widget/checkbox.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white70,
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/b_login.png'), fit: BoxFit.fill)),
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
                        "Sign In",
                        style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.w700,
                            fontSize: 24,
                            fontFamily: 'gotham'),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  const TextEmailField(),
                  SizedBox(
                    height: 20,
                  ),
                  const TextPassField(),
                  SizedBox(
                    height: 20,
                  ),
                  const CheckBox(),
                  SizedBox(
                    height: 20,
                  ),
                  const SignInButton(),
                  SizedBox(
                    height: 40,
                  ),
                  Column(
                    children: const [
                      Text(
                        ".Or sign in with-",
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
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      Text(
                        ". Don't have an account?",
                        style: TextStyle(
                            color: Colors.black38,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'gotham'),
                      ),
                      InkWell(
                        child: Text(
                          'Sign up',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.indigo.shade200,
                          ),
                        ),
                        onTap: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      SignUpPage()));
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
