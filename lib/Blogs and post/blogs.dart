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
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        elevation: 0.0,
        actions: [
          IconButton(
              icon: Icon(
                Icons.person,
                color: Colors.black,
              ),
              onPressed: () {})
        ],
      ),
      body: Container(
          child: FirebaseAnimatedList(
              sort: (a, b) => (b.key.compareTo(a.key)),
              defaultChild: Center(
                child: CircularProgressIndicator(
                  backgroundColor: Colors.black,
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
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Color(0xFFFFC0CB),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 5, 20, 5),
                                      child: Text(
                                        snapshot1.data.value['username'],
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                            letterSpacing: 1,
                                            fontSize: 30),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 5, 5, 0),
                                      child: Text(
                                        snapshot1.data.value['post']
                                            .toString()
                                            .substring(0, 79),
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 18),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 0, 20, 5),
                                      child: GestureDetector(
                                        onTap: () {
                                          showDialog(
                                              context: context,
                                              builder: (context) {
                                                return AlertDialog(
                                                  scrollable: true,
                                                  content: Text(snapshot1
                                                      .data.value['post']),
                                                  actions: [
                                                    IconButton(
                                                        icon: Icon(
                                                          Icons.comment,
                                                          color: Colors.black,
                                                        ),
                                                        onPressed: () {
                                                          Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                                  builder:
                                                                      (context) =>
                                                                          Comment1(
                                                                            comment1:
                                                                                snapshot1.data.value['uid'],
                                                                          )));
                                                        })
                                                  ],
                                                );
                                              });
                                        },
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
                                    Container(
                                      width: 550,
                                      height: 404,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: NetworkImage(snapshot1
                                                  .data.value['image']),
                                              fit: BoxFit.cover)),
                                    ),
                                    Container(
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            20, 5, 20, 5),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Icon(
                                              MdiIcons.heart,
                                              color: Colors.red,
                                              size: 30,
                                            ),
                                            Icon(
                                              MdiIcons.share,
                                              color: Colors.white,
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
                          )
                        : Container();
                  },
                );
              })),
    );
  }
}
