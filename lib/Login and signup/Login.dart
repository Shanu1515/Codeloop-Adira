import 'package:flutter/material.dart';
import 'package:hackathon2/Login%20and%20signup/Authenticate.dart';

class Login extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "CYALA",
      debugShowCheckedModeBanner: false,
      home: Authenticate(),
    );
  }
}
