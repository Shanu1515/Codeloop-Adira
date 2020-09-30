import 'package:flutter/material.dart';
import 'package:hackathon2/Doctor/Login1%20and%20signup1/Authenticate1.dart';
import 'package:hackathon2/Login%20and%20signup/Authenticate.dart';

class One extends StatefulWidget {
  @override
  _OneState createState() => _OneState();
}

class _OneState extends State<One> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: RaisedButton(
                child: Text("Patient"),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Authenticate()));
                }),
          ),
          Center(
            child: RaisedButton(
                child: Text("Doctor"),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Authenticate1()));
                }),
          )
        ],
      ),
    );
  }
}
