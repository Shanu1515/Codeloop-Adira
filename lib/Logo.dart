import 'package:flutter/material.dart';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:page_transition/page_transition.dart';

import 'onboarding/onboarding.dart';

class Logo extends StatefulWidget {
  @override
  _LogoState createState() => _LogoState();
}

class _LogoState extends State<Logo> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            PageTransition(type: PageTransitionType.fade, child: App()));
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Container(
            child: Container(
              child: RotateAnimatedTextKit(
                duration: Duration(milliseconds: 100),
                pause: Duration(milliseconds: 0),
                onFinished: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.fade, child: App()));
                },
                text: ["CAPTURE", "SHARE", "EXPLORE"],
                textStyle: TextStyle(
                    color: Colors.transparent,
                    fontSize: 20.0,
                    letterSpacing: 10,
                    fontWeight: FontWeight.w900),
                totalRepeatCount: 1,
              ),
            ),
            height: 400,
            width: 400,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/Logo.png"), fit: BoxFit.cover)),
          ),
        ),
      ),
    );
  }
}
