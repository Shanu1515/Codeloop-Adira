import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';

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
              query: database1,
              itemBuilder: (_, DataSnapshot snapshot,
                  Animation<double> animation, int index) {
                return FutureBuilder<DataSnapshot>(
                  future: database1.reference().child(snapshot.key).once(),
                  builder: (context, snapshot1) {
                    return snapshot1.hasData
                        ? Center(
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Card(
                                elevation: 12,
                                child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    height:
                                        MediaQuery.of(context).size.height / 2,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                snapshot1.data.value['image']),
                                            colorFilter: new ColorFilter.mode(
                                                Colors.black.withOpacity(0.5),
                                                BlendMode.dstATop),
                                            fit: BoxFit.cover)),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                3.5),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            snapshot1.data.value['username'],
                                            style: TextStyle(
                                                shadows: [
                                                  Shadow(
                                                    color: Colors.white,
                                                    blurRadius: 20.0,
                                                  )
                                                ],
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 40),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            snapshot1.data.value['post']
                                                .toString()
                                                .substring(0, 79),
                                            style: TextStyle(
                                                shadows: [
                                                  Shadow(
                                                    color: Colors.white,
                                                    blurRadius: 20.0,
                                                  ),
                                                ],
                                                color: Colors.black87,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(2.0),
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
                                            child: Text(
                                              "readmore",
                                              style: TextStyle(
                                                  shadows: [
                                                    Shadow(
                                                      color: Colors.white,
                                                      blurRadius: 20.0,
                                                    ),
                                                  ],
                                                  color: Colors.red,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20),
                                            ),
                                          ),
                                        )
                                      ],
                                    )),
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
