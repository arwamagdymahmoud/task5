import 'package:flutter/material.dart';
import 'package:task5/forget_password.dart';
import 'package:task5/sign_up_page.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Row(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 30, top: 130),
              child: Text(
                'Log In',
                style: TextStyle(
                    color: Color.fromARGB(199, 44, 40, 40),
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 600, top: 130),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => ForgetPassword()));
                },
                child: Text(
                  'Forget password',
                  style: TextStyle(
                      fontSize: 30,
                      color: Color.fromARGB(198, 101, 94, 94),
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
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
                  'USERNAME/EMAIL',
                ),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                prefixIcon: Icon(
                  Icons.person_2_outlined,
                  color: Color.fromARGB(221, 78, 74, 74),
                ),
              ),
            ),
            SizedBox(
              width: 30,
            ),
            TextFormField(
              decoration: InputDecoration(
                label: Text(
                  'Password',
                ),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                prefixIcon: Icon(
                  Icons.lock_outline,
                  color: Color.fromARGB(221, 78, 74, 74),
                ),
              ),
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
                  'Log In',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                )),
            SizedBox(width: 200, height: 100),
            GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => SignuP()));
                },
                child: Text(
                  'create a new account',
                  style: TextStyle(
                      fontSize: 15, color: Color.fromARGB(255, 255, 105, 105)),
                ))
          ])),
    ]));
  }
}
