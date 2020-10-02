import 'package:hackathon2/global.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:flutter_socket_io/flutter_socket_io.dart';
import 'package:flutter_socket_io/socket_io_manager.dart';
import 'dart:convert';

import 'message.dart';
import 'user.dart';

class ChatModel extends Model {
  List<User> users = [
    User('Shubham Mehta', '5f602d5d868b451a58b3bff8'), // stuent id
    User('Debashish Sau', '111110'), //mentor id
  ];

  User currentUser;
  List<User> friendList = List<User>();
  List<Message> messages = List<Message>();
  SocketIO socketIO;

  void init() {
    currentUser = users[1]; //ye mein hoon
    friendList = users
        .where((user) => user.chatID != currentUser.chatID)
        .toList(); //friend list mein tu hai

    socketIO = SocketIOManager().createSocketIO(
        'https://chat-flutter-pp.herokuapp.com/', '/',
        query: 'chatID=${currentUser.chatID}'); //socket bana meri id key saath
    socketIO.init();

    socketIO.subscribe('receive_message', (jsonData) {
      Map<String, dynamic> data = json.decode(jsonData);
      messages.add(Message(
          data['content'], data['senderChatID'], data['receiverChatID']));
      notifyListeners();
    });

    socketIO.connect();
  }

  void sendMessage(String text, String receiverChatID) {
    messages.add(Message(text, currentUser.chatID, receiverChatID));
    socketIO.sendMessage(
      'send_message',
      json.encode({
        'receiverChatID': receiverChatID,
        'senderChatID': currentUser.chatID,
        'content': text,
      }),
    );
    notifyListeners();
  }

  List<Message> getMessagesForChatID(String chatID) {
    return messages
        .where((msg) => msg.senderID == chatID || msg.receiverID == chatID)
        .toList();
  }
}
