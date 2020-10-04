import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:hackathon2/Comments/comment.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

DatabaseReference database1;

class Blogs extends StatefulWidget {
  @override
  _BlogsState createState() => _BlogsState();
}

class _BlogsState extends State<Blogs> {
  @override
  void initState() {
    super.initState();
    database1 = FirebaseDatabase.instance.reference().child("Posts");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Center(
          child: Text(
            "ADIRA",
            style: TextStyle(
                color: Colors.black,
                letterSpacing: 20,
                fontSize: 25,
                fontWeight: FontWeight.w400),
          ),
        ),
      ),
      body: Container(
          child: FirebaseAnimatedList(
              sort: (a, b) => (b.key.compareTo(a.key)),
              defaultChild: Center(
                child: CircularProgressIndicator(
                  backgroundColor: Colors.white,
                ),
              ),
              query: database1,
              itemBuilder: (_, DataSnapshot snapshot,
                  Animation<double> animation, int index) {
                return FutureBuilder<DataSnapshot>(
                  future: database1.reference().child(snapshot.key).once(),
                  builder: (context, snapshot1) {
                    return snapshot1.hasData
                        ? Center(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                              child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                elevation: 10,
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Color(0xFFFFC0CB),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            10, 10, 20, 5),
                                        child: Center(
                                          child: Text(
                                            snapshot1.data.value['username'],
                                            style: TextStyle(
                                                color: Colors.black87,
                                                fontWeight: FontWeight.w900,
                                                letterSpacing: 3,
                                                fontSize: 20),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            10, 0, 5, 0),
                                        child: Text(
                                          snapshot1.data.value['post']
                                              .toString()
                                              .substring(0, 79),
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 16),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            10, 0, 20, 10),
                                        child: GestureDetector(
                                          onTap: () {
                                            showDialog(
                                                context: context,
                                                builder: (context) {
                                                  return AlertDialog(
                                                    scrollable: true,
                                                    content: Text(snapshot1
                                                        .data.value['post']),
                                                  );
                                                });
                                          },
                                          child: Padding(
                                            padding: const EdgeInsets.all(0.0),
                                            child: Container(
                                              child: Text(
                                                "Read More...",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 17),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 550,
                                        height: 300,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: NetworkImage(snapshot1
                                                    .data.value['image']),
                                                fit: BoxFit.cover)),
                                      ),
                                      Container(
                                        child: Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              0, 10, 0, 10),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(
                                                MdiIcons.heart,
                                                color: Colors.red,
                                                size: 30,
                                              ),
                                              SizedBox(
                                                width: 100,
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              Comment1(
                                                                comment1: snapshot1
                                                                        .data
                                                                        .value[
                                                                    'uid'],
                                                              )));
                                                },
                                                child: Icon(
                                                  Icons.insert_comment,
                                                  color: Colors.white,
                                                  size: 30,
                                                ),
                                              ),
                                              SizedBox(
                                                width: 100,
                                              ),
                                              Icon(
                                                MdiIcons.share,
                                                color: Colors.black,
                                                size: 30,
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          )
                        : Container();
                  },
                );
              })),
    );
  }
}
