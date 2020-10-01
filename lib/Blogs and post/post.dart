import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:hackathon2/global.dart';
import 'package:uuid/uuid.dart';

DatabaseReference database;
bool k = false;
final databaseReference = FirebaseDatabase.instance.reference();
String abc;

class Post extends StatefulWidget {
  @override
  _PostState createState() => _PostState();
}

class _PostState extends State<Post> {
  TextEditingController posttext = TextEditingController();
  final formkey = GlobalKey<FormState>();

  Future<String> add(String posttext, String image, String name) async {
    var uuid = new Uuid().v1();
    DatabaseReference _color2 = databaseReference.child("Posts").child(uuid);
    final TransactionResult transactionResult =
        await _color2.runTransaction((MutableData mutableData) async {
      mutableData.value = (mutableData.value ?? 0) + 1;

      return mutableData;
    });
    if (transactionResult.committed) {
      _color2.push().set(<String, String>{
        "image": "true",
        "postname": "true",
        "post": "true",
        "uid": "true"
      }).then((_) {
        print('Transaction  committed.');

        abc = "success";
      });
    } else {
      print('Transaction not committed.');
      if (transactionResult.error != null) {
        print(transactionResult.error.message);
      }
    }
    _color2
        .set({"image": image, "username": name, "post": posttext, "uid": uuid});

    return abc;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Form(
        key: formkey,
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.transparent,
                    backgroundImage: NetworkImage(globalimage),
                    radius: 30,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    globalname,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
                  )
                ],
              ),
            ),
            Card(
              elevation: 0,
              child: Container(
                color: Colors.grey[100],
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 1.6,
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      validator: (val) {
                        return val.length > 79
                            ? null
                            : "Text Should be of minimun 100 letters";
                      },
                      controller: posttext,
                      maxLines: null,
                      textInputAction: TextInputAction.done,
                      keyboardType: TextInputType.multiline,
                      enableSuggestions: true,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Share your experience",
                          hintStyle:
                              TextStyle(color: Colors.black38, fontSize: 20)),
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width / 5,
                child: RaisedButton(
                    child: Center(
                      child: Text(
                        "Share",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    onPressed: () {
                      if (formkey.currentState.validate()) {
                        formkey.currentState.save();
                        add(posttext.text, globalimage, globalname);
                        posttext.clear();
                      }
                    }),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
