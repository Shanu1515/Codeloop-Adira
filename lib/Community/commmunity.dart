import 'package:flutter/material.dart';
import 'package:hackathon2/Community/communtity1.dart';

class Community extends StatefulWidget {
  @override
  _CommunityState createState() => _CommunityState();
}

class _CommunityState extends State<Community> {
  List<String> abc = ["Hello"];
  List<String> abc1 = ['Group1', 'Group2', 'Group3'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          elevation: 0,
          title: Center(
            child: Text(
              "COMMUNITY",
              style: TextStyle(
                  color: Colors.black,
                  letterSpacing: 5,
                  fontSize: 20,
                  fontWeight: FontWeight.w400),
            ),
          ),
        ),
        body: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Community1(
                              groupname: "Texas Club",
                            )));
              },
              child: Card(
                  child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 8,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(height: 20),
                    Center(
                      child: Text(
                        "Texas Club",
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: Colors.transparent,
                            backgroundImage:
                                ExactAssetImage("assets/girl4.jpeg"),
                          ),
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: Colors.transparent,
                            backgroundImage:
                                ExactAssetImage("assets/girl5.jpeg"),
                          ),
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: Colors.transparent,
                            backgroundImage:
                                ExactAssetImage("assets/girl7.jpg"),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Community1(
                              groupname: "California Support",
                            )));
              },
              child: Card(
                  child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 8,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(height: 20),
                    Center(
                      child: Text(
                        "California Support",
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: Colors.transparent,
                            backgroundImage:
                                ExactAssetImage("assets/girl8.jpeg"),
                          ),
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: Colors.transparent,
                            backgroundImage:
                                ExactAssetImage("assets/girl9.jpeg"),
                          ),
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: Colors.transparent,
                            backgroundImage:
                                ExactAssetImage("assets/girl10.jpeg"),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Community1(
                              groupname: "GRP,san diego women grp",
                            )));
              },
              child: Card(
                  child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 8,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(height: 20),
                    Center(
                      child: Text(
                        "GRP,san diego women grp",
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: Colors.transparent,
                            backgroundImage:
                                ExactAssetImage("assets/girl11.jpeg"),
                          ),
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: Colors.transparent,
                            backgroundImage:
                                ExactAssetImage("assets/girl12.jpeg"),
                          ),
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: Colors.transparent,
                            backgroundImage:
                                ExactAssetImage("assets/girl13.jpeg"),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )),
            ),
          ],
        ));
  }
}
