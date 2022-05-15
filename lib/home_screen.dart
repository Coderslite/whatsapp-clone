import 'package:flutter/material.dart';
import 'package:whatsapp_clone/call.dart';
import 'package:whatsapp_clone/chat.dart';
import 'package:whatsapp_clone/status.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = new TabController(length: 4, vsync: this)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff075e54),
        title: const Text("Whatsapp"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          labelPadding: const EdgeInsets.all(12),
          tabs: [
            const Icon(Icons.camera_alt),
            Container(
              width: MediaQuery.of(context).size.width / 4,
              alignment: Alignment.center,
              child: const Text("CHAT"),
            ),
            Container(
              width: MediaQuery.of(context).size.width / 4,
              alignment: Alignment.center,
              child: const Text("STATUS"),
            ),
            Container(
              width: MediaQuery.of(context).size.width / 4,
              alignment: Alignment.center,
              child: const Text("CALL"),
            ),
          ],
        ),
      ),
      body: TabBarView(controller: _tabController, children: const [
        Text("Camera"),
        ChatScreen(),
        StatusScreen(),
        CallScreen(),
      ]),
    );
  }
}
