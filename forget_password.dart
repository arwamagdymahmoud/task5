import 'package:flutter/material.dart';
import 'package:task5/Log In.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          child: Padding(
            padding: const EdgeInsets.only(left: 30, top: 130),
            child: Text(
              'Forget password',
              style: TextStyle(
                  color: Color.fromARGB(199, 44, 40, 40),
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        SizedBox(
          width: 30,
        ),
        Container(
            child: Padding(
                padding: const EdgeInsets.only(left: 30, top: 200),
                child: Text(
                  'Enter the email address you used to create your account and we will email you a link to reset your password',
                  style: TextStyle(
                    color: Color.fromARGB(198, 107, 98, 98),
                    fontSize: 15,
                  ),
                ))),
        SizedBox(
          width: 30,
        ),
        Container(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.5),
            child: Column(children: [
              TextFormField(
                decoration: InputDecoration(
                  label: Text(
                    'EMAIL',
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                  prefixIcon: Icon(
                    Icons.mail_outline,
                    color: Color.fromARGB(221, 78, 74, 74),
                  ),
                ),
              ),
              SizedBox(
                width: 30,
              ),
              SizedBox(
                width: 50,
                height: 30,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(600, 60),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50))),
                      primary: Color.fromARGB(255, 255, 105, 105)),
                  onPressed: () {},
                  child: Text(
                    'Send Email',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  )),
            ])),
      ]),
    );
  }
}
