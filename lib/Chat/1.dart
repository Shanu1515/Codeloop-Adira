import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import '2.dart';
import 'chatmodel.dart';

class MyApp extends StatefulWidget {
  final String uid;

  const MyApp({Key key, this.uid}) : super(key: key);
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ScopedModel(
      model: ChatModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: AllChatsPage(
          uid: widget.uid,
        ),
      ),
    );
  }
}
