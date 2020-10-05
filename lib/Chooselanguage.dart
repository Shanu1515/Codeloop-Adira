import 'package:flutter/material.dart';
import 'package:hackathon2/1.dart';
import 'package:hackathon2/Choices/Choices.dart';
import 'package:page_transition/page_transition.dart';

class Language extends StatefulWidget {
  @override
  _LanguageState createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  String dropdownValue = 'Select your language';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFC0CB),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Center(
          child: Text(
            "CHOOSE YOUR LANGUAGE",
            style: TextStyle(
                color: Colors.black,
                letterSpacing: 5,
                fontSize: 20,
                fontWeight: FontWeight.w400),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  PageTransition(type: PageTransitionType.fade, child: One()));
            },
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
              child: Container(
                height: 50,
                width: 500,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "ENGLISH",
                        style: TextStyle(fontSize: 20, letterSpacing: 5),
                      ),
                      Icon(Icons.arrow_forward_ios)
                    ],
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  PageTransition(type: PageTransitionType.fade, child: One()));
            },
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Container(
                height: 50,
                width: 500,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "FRENCH",
                        style: TextStyle(fontSize: 20, letterSpacing: 5),
                      ),
                      Icon(Icons.arrow_forward_ios)
                    ],
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  PageTransition(type: PageTransitionType.fade, child: One()));
            },
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Container(
                height: 50,
                width: 500,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "SPANISH",
                        style: TextStyle(fontSize: 20, letterSpacing: 5),
                      ),
                      Icon(Icons.arrow_forward_ios)
                    ],
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  PageTransition(type: PageTransitionType.fade, child: One()));
            },
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Container(
                height: 50,
                width: 500,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "ARABIC",
                        style: TextStyle(fontSize: 20, letterSpacing: 5),
                      ),
                      Icon(Icons.arrow_forward_ios)
                    ],
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  PageTransition(type: PageTransitionType.fade, child: One()));
            },
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Container(
                height: 50,
                width: 500,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "HINDI",
                        style: TextStyle(fontSize: 20, letterSpacing: 5),
                      ),
                      Icon(Icons.arrow_forward_ios)
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
