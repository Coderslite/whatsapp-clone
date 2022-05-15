import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int i = 0; i < 5; i++)
          const ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/images/profile.jpg"),
            ),
            title: Text("Emedo Joycelyn"),
            subtitle: Text("How are you"),
            trailing: Text("7:30pm"),
          ),
        Divider()
      ],
    );
  }
}
