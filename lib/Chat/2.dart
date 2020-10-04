import 'package:agora_rtc_engine/rtc_engine.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hackathon2/Appoitment/Appointmentlist.dart';
import 'package:hackathon2/Appoitment/Show.dart';
import 'package:hackathon2/Appoitment/appointment.dart';
import 'package:hackathon2/Appoitment/bot.dart';
import 'package:hackathon2/Appoitment/call.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:http/http.dart' as http;
import '3.dart';
import 'chatmodel.dart';
import 'user.dart';

class AllChatsPage extends StatefulWidget {
  final String uid;
  final String image2;
  const AllChatsPage({Key key, this.uid, this.image2}) : super(key: key);
  @override
  _AllChatsPageState createState() => _AllChatsPageState();
}

class _AllChatsPageState extends State<AllChatsPage> {
  int f = 0;
  ClientRole _role = ClientRole.Broadcaster;

  Future<void> onJoin() async {
    // update input validation
    // await for camera and mic permissions before pushing video page
    await _handleCameraAndMic();
    // push video page with given channel name
    await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CallPage(
          channelName: widget.uid,
          role: _role,
        ),
      ),
    );
  }

  Future<void> _handleCameraAndMic() async {
    await PermissionHandler().requestPermissions(
      [PermissionGroup.camera, PermissionGroup.microphone],
    );
  }

  @override
  void initState() {
    super.initState();
    ScopedModel.of<ChatModel>(context, rebuildOnChange: false).init();
  }

  void friendClicked(User friend) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) {
          return MyApp(
            drimag: widget.image2,
          );
        },
      ),
    );
  }

  Widget buildAllChatList() {
    return ScopedModelDescendant<ChatModel>(
      builder: (context, child, model) {
        return ListView.builder(
            itemCount: model.friendList.length,
            itemBuilder: (BuildContext context, int index) {
              User friend = model.friendList[index];
              return Center(
                child: Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(70.0),
                        child: Center(
                          child: Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  onJoin();
                                },
                                child: CircleAvatar(
                                  radius: 40,
                                  backgroundColor: Colors.pink[100],
                                  child: Center(
                                    child: Icon(
                                      CupertinoIcons.video_camera_solid,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              GestureDetector(
                                onTap: () {
                                  friendClicked(friend);
                                },
                                child: CircleAvatar(
                                  radius: 40,
                                  backgroundColor: Colors.pink[100],
                                  child: Center(
                                    child: Icon(
                                      Icons.chat_bubble_outline,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              );
            });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Appointment3()));
            }),
        // iconTheme: IconThemeData(color: Colors.black),
        //automaticallyImplyLeading: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Center(
          child: Text(
            "CONNECTION",
            style: TextStyle(
                color: Colors.black,
                letterSpacing: 3,
                fontSize: 20,
                fontWeight: FontWeight.w400),
          ),
        ),
      ),
      body: Center(child: buildAllChatList()),
    );
  }
}
