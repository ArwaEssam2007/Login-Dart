import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class login extends StatefulWidget {
  final String title;
  login({super.key, required this.title});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blue,
          leading: Icon(Icons.account_circle_sharp),
          title: Text("Log in"),
        ),
        body: Container(
            width: double.infinity,
            child:
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              CircleAvatar(
                backgroundColor: Colors.blue,
                radius: 50,
                child: Icon(Icons.person),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 32),
                child: TextFormField(
                  controller: email,
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    icon: Icon(Icons.email),
                    labelText: ("Email"),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 32),
                child: TextFormField(
                  controller: pass,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    icon: Icon(Icons.lock),
                    labelText: ("Password"),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              MaterialButton(
                onPressed: () {},
                child: Text("Login"),
                color: Colors.blue,
                height: 50,
                minWidth: 150,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Dont have an account"),
                  TextButton(
                      onPressed: () {
                        print(email.text);
                        print(pass.text);
                      },
                      child: Text("Sign Up")),
                ],
              )
            ])));
  }
}
