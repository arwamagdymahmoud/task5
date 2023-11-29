import 'package:flutter/material.dart';

class SignuP extends StatefulWidget {
  const SignuP({super.key});

  @override
  State<SignuP> createState() => _SignuPState();
}

class _SignuPState extends State<SignuP> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(backgroundColor: (Color.fromARGB(255, 134, 116, 116))),
        home: Scaffold(
            body: Stack(children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 30, top: 130),
              child: Text(
                'Sign Up',
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
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.5),
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
                TextFormField(
                  decoration: InputDecoration(
                    label: Text(
                      'USERNAME',
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                    prefixIcon: Icon(
                      Icons.person_2_outlined,
                      color: Color.fromARGB(221, 78, 74, 74),
                    ),
                  ),
                ),
                SizedBox(
                  width: 30,
                  height: 30,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    label: Text(
                      'Password',
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                    prefixIcon: Icon(
                      Icons.lock_outline,
                      color: Color.fromARGB(221, 78, 74, 74),
                    ),
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(600, 60),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        primary: Color.fromARGB(255, 255, 105, 105)),
                    onPressed: () {},
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    )),
                SizedBox(width: 200, height: 50),
                GestureDetector(
                    child: Text(
                  'by creating an account you agree of our Terms AND conditions',
                  style: TextStyle(
                      fontSize: 15, color: Color.fromARGB(255, 111, 106, 106)),
                ))
              ])),
        ])));
  }
}
