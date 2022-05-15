import 'package:flutter/material.dart';
import 'package:whatsapp_clone/home_screen.dart';

void main() {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xff075e54),
        primaryColorLight: const Color(0xff08d261),
      ),
      home: const HomeScreen(),
    );
  }
}