import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Message extends StatefulWidget {
  @override
  _MessageState createState() => _MessageState();
}

class _MessageState extends State<Message> {
  int a = 0, a1 = 0, b, b1, k, k1, m, m1, o, o1, r; //this is for step1;
  int f1 = 1,
      f2,
      f3,
      f4,
      f5,
      f6,
      f7,
      f8,
      f9,
      f10,
      f11,
      f12,
      f13,
      f14,
      f15,
      f16,
      f17,
      f18,
      f19,
      f20;
  int g = 1, c = 1, l = 1, s = 1, p = 1, t = 1, g1 = 1, c1 = 1, l1 = 1, s1 = 1;
  //for yes or no
  List<String> step1 = [
    "Are the breasts of usual size?",
    "Are the Shape of breasts same as usual?",
    "Did you feel any dimpling,puckering or bulging of the skin?",
    "Did your nipple change position or an inverted nipple(Pushed inward instead of sticking out) is observed?",
    "Did you observe any sort of redness ,soreness,rash or swelling?",
    "Is there any kind of fluid coming out of the nipples?"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.all(8.3),
            child: Container(
              width: MediaQuery.of(context).size.width / 1.3,
              height: MediaQuery.of(context).size.height / 9,
              decoration: BoxDecoration(
                  color: Hexcolor('#EF0B64'),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              child: Center(
                child: Flexible(
                    child: Text(
                  "Stand In Front of the mirror\nin a well illuminated room,and\nfollow these steps to know about your health",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.3),
            child: Container(
              width: MediaQuery.of(context).size.width / 1.1,
              height: MediaQuery.of(context).size.height / 7,
              decoration: BoxDecoration(
                  color: Hexcolor('#EF0B64'),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              child: Center(
                child: Flexible(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Flexible(
                        child: Text(
                          "Step 1:\nBegin By looking at your breasts in the mirror with your shoulders straight and your arms on your hips.",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ),
                      Column(
                        children: [
                          Image.asset(
                            "assets/1.jpg",
                            height: MediaQuery.of(context).size.height / 10,
                            fit: BoxFit.cover,
                            filterQuality: FilterQuality.low,
                          ),
                          Text("# For Education Purpose")
                        ],
                      )
                    ],
                  ),
                )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.3),
            child: Container(
              width: MediaQuery.of(context).size.width / 1.3,
              height: MediaQuery.of(context).size.height / 9,
              decoration: BoxDecoration(
                  color: Hexcolor('#EF0B64'),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              child: Center(
                child: Flexible(
                    child: Text(
                  step1[a],
                  style: TextStyle(color: Colors.white, fontSize: 15),
                )),
              ),
            ),
          ),
          if (f1 == 1)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  RaisedButton(
                      child: Center(
                        child: Text("Yes"),
                      ),
                      onPressed: () {
                        setState(() {
                          f1 = 0;
                          f2 = 0;
                          b = a + 1;
                        });
                      }),
                  SizedBox(
                    width: 10,
                  ),
                  RaisedButton(
                      child: Center(
                        child: Text("No"),
                      ),
                      onPressed: () {
                        setState(() {
                          f1 = 0;
                          f2 = 0;
                          b = a + 1;
                          g = 0;
                        });
                      }),
                ],
              ),
            ),
          if (f1 == 0)
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.all(8.3),
                child: Container(
                  width: MediaQuery.of(context).size.width / 4,
                  height: MediaQuery.of(context).size.height / 15,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20))),
                  child: Center(
                    child: Flexible(
                      child: g == 1
                          ? Text(
                              "Yes",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            )
                          : Text(
                              "No",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                    ),
                  ),
                ),
              ),
            ),
          if (f1 == 0)
            Padding(
              padding: const EdgeInsets.all(8.3),
              child: Container(
                width: MediaQuery.of(context).size.width / 1.3,
                height: MediaQuery.of(context).size.height / 9,
                decoration: BoxDecoration(
                    color: Hexcolor('#EF0B64'),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
                child: Center(
                  child: Flexible(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      step1[b],
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  )),
                ),
              ),
            ),
          if (f2 == 0)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  RaisedButton(
                      child: Center(
                        child: Text("Yes"),
                      ),
                      onPressed: () {
                        setState(() {
                          f2 = 1;
                          f3 = 0;
                          f4 = 0;
                          k = b + 1;
                        });
                      }),
                  SizedBox(
                    width: 10,
                  ),
                  RaisedButton(
                      child: Center(
                        child: Text("No"),
                      ),
                      onPressed: () {
                        setState(() {
                          f2 = 1;
                          f3 = 0;
                          f4 = 0;
                          k = b + 1;
                          c = 0;
                        });
                      }),
                ],
              ),
            ),
          if (f3 == 0)
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.all(8.3),
                child: Container(
                  width: MediaQuery.of(context).size.width / 4,
                  height: MediaQuery.of(context).size.height / 15,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20))),
                  child: Center(
                    child: Flexible(
                      child: c == 1
                          ? Text(
                              "Yes",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            )
                          : Text(
                              "No",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                    ),
                  ),
                ),
              ),
            ),
          if (f3 == 0)
            Padding(
              padding: const EdgeInsets.all(8.3),
              child: Container(
                width: MediaQuery.of(context).size.width / 1.3,
                height: MediaQuery.of(context).size.height / 9,
                decoration: BoxDecoration(
                    color: Hexcolor('#EF0B64'),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
                child: Center(
                  child: Flexible(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      step1[k],
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  )),
                ),
              ),
            ),
          if (f4 == 0)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  RaisedButton(
                      child: Center(
                        child: Text("Yes"),
                      ),
                      onPressed: () {
                        setState(() {
                          f4 = 1;
                          f5 = 0;
                          f6 = 0;
                          m = k + 1;
                        });
                      }),
                  SizedBox(
                    width: 10,
                  ),
                  RaisedButton(
                      child: Center(
                        child: Text("No"),
                      ),
                      onPressed: () {
                        setState(() {
                          f4 = 1;
                          f5 = 0;
                          f6 = 0;
                          m = k + 1;
                          l = 0;
                        });
                      }),
                ],
              ),
            ),
          if (f5 == 0)
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.all(8.3),
                child: Container(
                  width: l == 0
                      ? MediaQuery.of(context).size.width / 4
                      : MediaQuery.of(context).size.width / 2.8,
                  height: MediaQuery.of(context).size.height / 15,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20))),
                  child: Center(
                    child: Flexible(
                      child: l == 1
                          ? Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Contact the doctor immediately",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                            )
                          : Text(
                              "No",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                    ),
                  ),
                ),
              ),
            ),
          if (f5 == 0)
            Padding(
              padding: const EdgeInsets.all(8.3),
              child: Container(
                width: MediaQuery.of(context).size.width / 1.3,
                height: MediaQuery.of(context).size.height / 9,
                decoration: BoxDecoration(
                    color: Hexcolor('#EF0B64'),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
                child: Center(
                  child: Flexible(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      step1[m],
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  )),
                ),
              ),
            ),
          if (f6 == 0)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  RaisedButton(
                      child: Center(
                        child: Text("Yes"),
                      ),
                      onPressed: () {
                        setState(() {
                          f6 = 1;
                          f7 = 0;
                          f8 = 0;
                          o = m + 1;
                        });
                      }),
                  SizedBox(
                    width: 10,
                  ),
                  RaisedButton(
                      child: Center(
                        child: Text("No"),
                      ),
                      onPressed: () {
                        setState(() {
                          f6 = 1; //button hataney key liye
                          f7 = 0; //next question dikhaney key liye
                          f8 = 0; //button dikhaney key liye
                          o = m + 1;
                          s = 0;
                        });
                      }),
                ],
              ),
            ),
          if (f7 == 0)
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.all(8.3),
                child: Container(
                  width: s == 0
                      ? MediaQuery.of(context).size.width / 4
                      : MediaQuery.of(context).size.width / 2.8,
                  height: MediaQuery.of(context).size.height / 15,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20))),
                  child: Center(
                    child: Flexible(
                      child: s == 1
                          ? Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Attention needed",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                            )
                          : Text(
                              "No",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                    ),
                  ),
                ),
              ),
            ),
          if (f7 == 0)
            Padding(
              padding: const EdgeInsets.all(8.3),
              child: Container(
                width: MediaQuery.of(context).size.width / 1.3,
                height: MediaQuery.of(context).size.height / 9,
                decoration: BoxDecoration(
                    color: Hexcolor('#EF0B64'),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
                child: Center(
                  child: Flexible(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      step1[o],
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  )),
                ),
              ),
            ),
          if (f8 == 0)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  RaisedButton(
                      child: Center(
                        child: Text("Yes"),
                      ),
                      onPressed: () {
                        setState(() {
                          f8 = 1;
                          f9 = 0;
                          f10 = 0;
                          r = o + 1;
                        });
                      }),
                  SizedBox(
                    width: 10,
                  ),
                  RaisedButton(
                      child: Center(
                        child: Text("No"),
                      ),
                      onPressed: () {
                        setState(() {
                          f8 = 1;
                          f9 = 0;
                          f10 = 0;
                          r = o + 1;
                          p = 0;
                        });
                      }),
                ],
              ),
            ),
          if (f9 == 0)
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.all(8.3),
                child: Container(
                  width: r == 0
                      ? MediaQuery.of(context).size.width / 4
                      : MediaQuery.of(context).size.width / 2.8,
                  height: MediaQuery.of(context).size.height / 15,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20))),
                  child: Center(
                    child: Flexible(
                      child: p == 1
                          ? Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                " Attention needed",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                            )
                          : Text(
                              "No",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                    ),
                  ),
                ),
              ),
            ),
          if (f9 == 0)
            Padding(
              padding: const EdgeInsets.all(8.3),
              child: Container(
                width: MediaQuery.of(context).size.width / 1.3,
                height: MediaQuery.of(context).size.height / 9,
                decoration: BoxDecoration(
                    color: Hexcolor('#EF0B64'),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
                child: Center(
                  child: Flexible(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      step1[r],
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  )),
                ),
              ),
            ),
          if (f10 == 0)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  RaisedButton(
                      child: Center(
                        child: Text("Yes"),
                      ),
                      onPressed: () {
                        setState(() {
                          f11 = 0;
                          f12 = 0;
                          f10 = 1;
                        });
                      }),
                  SizedBox(
                    width: 10,
                  ),
                  RaisedButton(
                      child: Center(
                        child: Text("No"),
                      ),
                      onPressed: () {
                        setState(() {
                          f11 = 0;
                          f12 = 0;
                          f10 = 1;
                          t = 0;
                        });
                      }),
                ],
              ),
            ),
          if (f11 == 0)
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.all(8.3),
                child: Container(
                  width: MediaQuery.of(context).size.width / 4,
                  height: MediaQuery.of(context).size.height / 15,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20))),
                  child: Center(
                    child: Flexible(
                      child: t == 1
                          ? Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Yes",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                            )
                          : Text(
                              "No",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                    ),
                  ),
                ),
              ),
            ),
          if (f11 == 0)
            Padding(
              padding: const EdgeInsets.all(8.3),
              child: Container(
                width: MediaQuery.of(context).size.width / 1.1,
                height: MediaQuery.of(context).size.height / 7,
                decoration: BoxDecoration(
                    color: Hexcolor('#EF0B64'),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
                child: Center(
                  child: Flexible(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Flexible(
                          child: Text(
                            "Step 2:\nNow,Raise your arm and look for some minor details.",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ),
                        Column(
                          children: [
                            Image.asset(
                              "assets/2.jpg",
                              height: MediaQuery.of(context).size.height / 10,
                              fit: BoxFit.cover,
                              filterQuality: FilterQuality.low,
                            ),
                            Text("# For Education Purpose")
                          ],
                        )
                      ],
                    ),
                  )),
                ),
              ),
            ),
          if (f11 == 0)
            Padding(
              padding: const EdgeInsets.all(8.3),
              child: Container(
                width: MediaQuery.of(context).size.width / 1.3,
                height: MediaQuery.of(context).size.height / 9,
                decoration: BoxDecoration(
                    color: Hexcolor('#EF0B64'),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
                child: Center(
                  child: Flexible(
                      child: Text(
                    step1[a1],
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  )),
                ),
              ),
            ),
          if (f12 == 0)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  RaisedButton(
                      child: Center(
                        child: Text("Yes"),
                      ),
                      onPressed: () {
                        setState(() {
                          f12 = 1;
                          f13 = 0;
                          f14 = 0;
                          b1 = a1 + 1;
                        });
                      }),
                  SizedBox(
                    width: 10,
                  ),
                  RaisedButton(
                      child: Center(
                        child: Text("No"),
                      ),
                      onPressed: () {
                        setState(() {
                          f12 = 1; //button hataney key liye
                          f13 = 0; //next question dikhaney key liye
                          f14 = 0; //button dikhaney key liye
                          b1 = a1 + 1;
                          g1 = 0;
                        });
                      }),
                ],
              ),
            ),
          if (f13 == 0)
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.all(8.3),
                child: Container(
                  width: MediaQuery.of(context).size.width / 4,
                  height: MediaQuery.of(context).size.height / 15,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20))),
                  child: Center(
                    child: Flexible(
                      child: g1 == 1
                          ? Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Yes",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                            )
                          : Text(
                              "No",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                    ),
                  ),
                ),
              ),
            ),
          if (f13 == 0)
            Padding(
              padding: const EdgeInsets.all(8.3),
              child: Container(
                width: MediaQuery.of(context).size.width / 1.3,
                height: MediaQuery.of(context).size.height / 9,
                decoration: BoxDecoration(
                    color: Hexcolor('#EF0B64'),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
                child: Center(
                  child: Flexible(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      step1[b1],
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  )),
                ),
              ),
            ),
          if (f14 == 0)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  RaisedButton(
                      child: Center(
                        child: Text("Yes"),
                      ),
                      onPressed: () {
                        setState(() {
                          f14 = 1;
                          f15 = 0;
                          f16 = 0;
                          k1 = b1 + 1;
                        });
                      }),
                  SizedBox(
                    width: 10,
                  ),
                  RaisedButton(
                      child: Center(
                        child: Text("No"),
                      ),
                      onPressed: () {
                        setState(() {
                          f14 = 1; //button hataney key liye
                          f15 = 0; //next question dikhaney key liye
                          f16 = 0; //button dikhaney key liye
                          k1 = b1 + 1;
                          c1 = 0;
                        });
                      }),
                ],
              ),
            ),
          if (f15 == 0)
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.all(8.3),
                child: Container(
                  width: MediaQuery.of(context).size.width / 4,
                  height: MediaQuery.of(context).size.height / 15,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20))),
                  child: Center(
                    child: Flexible(
                      child: c1 == 1
                          ? Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Yes",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                            )
                          : Text(
                              "No",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                    ),
                  ),
                ),
              ),
            ),
          if (f15 == 0)
            Padding(
              padding: const EdgeInsets.all(8.3),
              child: Container(
                width: MediaQuery.of(context).size.width / 1.3,
                height: MediaQuery.of(context).size.height / 9,
                decoration: BoxDecoration(
                    color: Hexcolor('#EF0B64'),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
                child: Center(
                  child: Flexible(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      step1[k1],
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  )),
                ),
              ),
            ),
          if (f16 == 0)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  RaisedButton(
                      child: Center(
                        child: Text("Yes"),
                      ),
                      onPressed: () {
                        setState(() {
                          f16 = 1;
                          f17 = 0;
                          f18 = 0;
                          m1 = k1 + 1;
                        });
                      }),
                  SizedBox(
                    width: 10,
                  ),
                  RaisedButton(
                      child: Center(
                        child: Text("No"),
                      ),
                      onPressed: () {
                        setState(() {
                          f16 = 1; //button hataney key liye
                          f17 = 0; //next question dikhaney key liye
                          f18 = 0; //button dikhaney key liye
                          m1 = k1 + 1;
                          l1 = 0;
                        });
                      }),
                ],
              ),
            ),
          if (f17 == 0)
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.all(8.3),
                child: Container(
                  width: l1 == 0
                      ? MediaQuery.of(context).size.width / 4
                      : MediaQuery.of(context).size.width / 2.8,
                  height: MediaQuery.of(context).size.height / 15,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20))),
                  child: Center(
                    child: Flexible(
                      child: l1 == 1
                          ? Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Contact the doctor immediately",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                            )
                          : Text(
                              "No",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                    ),
                  ),
                ),
              ),
            ),
          if (f17 == 0)
            Padding(
              padding: const EdgeInsets.all(8.3),
              child: Container(
                width: MediaQuery.of(context).size.width / 1.3,
                height: MediaQuery.of(context).size.height / 9,
                decoration: BoxDecoration(
                    color: Hexcolor('#EF0B64'),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
                child: Center(
                  child: Flexible(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      step1[m1],
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  )),
                ),
              ),
            ),
          if (f18 == 0)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  RaisedButton(
                      child: Center(
                        child: Text("Yes"),
                      ),
                      onPressed: () {
                        setState(() {
                          f18 = 1;
                          f19 = 0;
                          f20 = 0;
                          o1 = m1 + 1;
                        });
                      }),
                  SizedBox(
                    width: 10,
                  ),
                  RaisedButton(
                      child: Center(
                        child: Text("No"),
                      ),
                      onPressed: () {
                        setState(() {
                          f18 = 1; //button hataney key liye
                          f19 = 0; //next question dikhaney key liye
                          f20 = 0; //button dikhaney key liye
                          o1 = m1 + 1;
                          s1 = 0;
                        });
                      }),
                ],
              ),
            ),
          if (f19 == 0)
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.all(8.3),
                child: Container(
                  width: s1 == 0
                      ? MediaQuery.of(context).size.width / 4
                      : MediaQuery.of(context).size.width / 2.8,
                  height: MediaQuery.of(context).size.height / 15,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20))),
                  child: Center(
                    child: Flexible(
                      child: s1 == 1
                          ? Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Attentiom needed",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                            )
                          : Text(
                              "No",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                    ),
                  ),
                ),
              ),
            ),
          if (f19 == 0)
            Padding(
              padding: const EdgeInsets.all(8.3),
              child: Container(
                width: MediaQuery.of(context).size.width / 1.3,
                height: MediaQuery.of(context).size.height / 9,
                decoration: BoxDecoration(
                    color: Hexcolor('#EF0B64'),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
                child: Center(
                  child: Flexible(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      step1[o1],
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  )),
                ),
              ),
            ),
          if (f20 == 0)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  RaisedButton(
                      child: Center(
                        child: Text("Yes"),
                      ),
                      onPressed: () {
                        setState(() {
                          f18 = 1;
                          f19 = 0;
                          f20 = 0;
                          o1 = m1 + 1;
                        });
                      }),
                  SizedBox(
                    width: 10,
                  ),
                  RaisedButton(
                      child: Center(
                        child: Text("No"),
                      ),
                      onPressed: () {
                        setState(() {
                          f18 = 1; //button hataney key liye
                          f19 = 0; //next question dikhaney key liye
                          f20 = 0; //button dikhaney key liye
                          o1 = m1 + 1;
                          s1 = 0;
                        });
                      }),
                ],
              ),
            ),
        ],
      ),
    ));
  }
}
