import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CallScreen extends StatefulWidget {
  const CallScreen({Key? key}) : super(key: key);

  @override
  State<CallScreen> createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: DottedBorder(
            color: Color.fromARGB(255, 151, 150, 150),
            strokeWidth: 5,
            borderType: BorderType.Circle,
            dashPattern: const [100, 0],
            child: const CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage("assets/images/profile.jpg"),
            ),
          ),
          title: const Text("Ossai Abraham"),
          subtitle: Row(
            children: const [
              Icon(
                CupertinoIcons.arrow_down_left,
                color: Colors.red,
              ),
              SizedBox(
                width: 5,
              ),
              Text("Today 1:24 PM"),
            ],
          ),
          trailing: const Icon(
            Icons.call,
            color: Color(0xff075e54),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        ListTile(
          leading: DottedBorder(
            color: Color.fromARGB(255, 151, 150, 150),
            strokeWidth: 5,
            borderType: BorderType.Circle,
            dashPattern: const [100, 0],
            child: const CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage("assets/images/profile.jpg"),
            ),
          ),
          title: const Text("Abgreat"),
          subtitle: Row(
            children: const [
              Icon(
                CupertinoIcons.arrow_up_right,
                color: Color(0xff075e54),
              ),
              SizedBox(
                width: 5,
              ),
              Text("Today 1:24 PM"),
            ],
          ),
          trailing: const Icon(
            Icons.call,
            color: Color(0xff075e54),
          ),
        ),
      ],
    );
  }
}
