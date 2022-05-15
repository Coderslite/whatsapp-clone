import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

class StatusScreen extends StatefulWidget {
  const StatusScreen({Key? key}) : super(key: key);

  @override
  State<StatusScreen> createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
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
            title: const Text("My status"),
            subtitle: const Text("Today 1:24 PM"),
          ),
          const Padding(
            padding:
                EdgeInsets.only(left: 25.0, right: 15, top: 10, bottom: 10),
            child: Text("Recent Updates"),
          ),
          Column(
            children: [
              for (int i = 0; i < 5; i++)
                ListTile(
                  selectedColor: const Color(0xff075e54),
                  focusColor: const Color(0xff075e54),
                  hoverColor: const Color(0xff075e54),
                  leading: DottedBorder(
                    borderType: BorderType.Circle,
                    color: const Color(0xff075e54),
                    strokeWidth: 3,
                    dashPattern: const [25, 2.5],
                    child: const CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("assets/images/profile.jpg"),
                      child: Icon(
                        Icons.add,
                        size: 15,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  title: Text("Emedo Joycelyn"),
                  subtitle: Text("55 minutes ago"),
                ),
            ],
          ),
          // Row(
          //   children: [
          // DottedBorder(
          //   borderType: BorderType.Circle,
          //   color: const Color(0xff075e54),
          //   strokeWidth: 3,
          //   dashPattern: const [25, 2.5],
          //   child: const CircleAvatar(
          //     radius: 30,
          //     backgroundImage: AssetImage("assets/images/profile.jpg"),
          //     child: Icon(
          //       Icons.add,
          //       size: 15,
          //       color: Colors.white,
          //     ),
          //   ),
          // ),
          //     SizedBox(
          //       width: 20,
          //     ),
          //     Column(
          //       crossAxisAlignment: CrossAxisAlignment.start,
          //       children: const [
          //         Text(
          //           "Ossai Abraham",
          //           // style: TextStyle(fontWeight: FontWeight.bold),
          //         ),
          //         SizedBox(
          //           height: 5,
          //         ),
          //         Text("55 minutes ago"),
          //       ],
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}
