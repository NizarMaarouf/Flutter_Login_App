// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.purple[200],
        child: Stack(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Container(
                margin: EdgeInsets.only(top: 75),
                child: Text('Welcome',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 40,
                        fontFamily: 'Courgette')),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(bottom: 127),
            // color: Colors.black,
            width: double.infinity,
            child: SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.purple[800]),
                      padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(horizontal: 125, vertical: 14)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(66))),
                    ),
                    child: Text(
                      "LogIn",
                      style: TextStyle(fontSize: 27, fontFamily: 'Courgette'),
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/signup');
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.purple[100]),
                      padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(horizontal: 120, vertical: 14)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(66))),
                    ),
                    child: Text(
                      "SignUp",
                      style: TextStyle(
                          fontSize: 27,
                          fontFamily: 'Courgette',
                          color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
      floatingActionButton: FloatingActionButton(backgroundColor: Colors.purple[800],
        onPressed: () {
          Navigator.pushNamed(context, '/');
        },
        child: Icon(
          Icons.home,
          color: Color.fromARGB(255, 255, 129, 129),
          size: 24.0,
        ),
      ),
    );
  }
}
