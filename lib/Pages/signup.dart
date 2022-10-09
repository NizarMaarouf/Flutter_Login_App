// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('Sign Up', style: TextStyle(fontSize: 27,fontFamily:'Courgette')),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.purple[200],
        child: SizedBox(
          width: double.infinity,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    margin: EdgeInsets.symmetric(vertical: 15),
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 9),
                    decoration: BoxDecoration(
                        color: Colors.purple[100],
                        borderRadius: BorderRadius.circular(66)),
                    width: 350,
                    child: TextField(
                       style: TextStyle(fontSize: 27,fontFamily:'Courgette'),
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "First Name : ",
                          hintStyle: TextStyle(fontSize: 19),
                          prefixIcon: Icon(Icons.input),
                        ))),
                Container(
                    margin: EdgeInsets.symmetric(vertical: 15),
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 9),
                    decoration: BoxDecoration(
                        color: Colors.purple[100],
                        borderRadius: BorderRadius.circular(66)),
                    width: 350,
                    child: TextField(
                       style: TextStyle(fontSize: 27,fontFamily:'Courgette'),
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Last Name : ",
                          hintStyle: TextStyle(fontSize: 19),
                          prefixIcon: Icon(Icons.input),
                        ))),
                Container(
                    margin: EdgeInsets.symmetric(vertical: 15),
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 9),
                    decoration: BoxDecoration(
                        color: Colors.purple[100],
                        borderRadius: BorderRadius.circular(66)),
                    width: 350,
                    child: TextField(
                       style: TextStyle(fontSize: 27,fontFamily:'Courgette'),
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Email : ",
                          hintStyle: TextStyle(fontSize: 19),
                          prefixIcon: Icon(Icons.email),
                        ))),
                Container(
                    margin: EdgeInsets.symmetric(vertical: 15),
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 9),
                    decoration: BoxDecoration(
                        color: Colors.purple[100],
                        borderRadius: BorderRadius.circular(66)),
                    width: 350,
                    child: TextField(
                       style: TextStyle(fontSize: 27,fontFamily:'Courgette'),
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Password :  ",
                          hintStyle: TextStyle(fontSize: 19),
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: Icon(Icons.visibility),
                        ))),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 15),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.purple),
                      padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(horizontal: 88, vertical: 14)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(66))),
                    ),
                    child: Text(
                      "Sign Up",
                      style: TextStyle(fontSize: 25,fontFamily:'Courgette'),
                    ),
                  ),
                ),
              ]),
        ),
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
