// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hng_slack/screen/profile.dart';

void main() {
  runApp(HngSlackApp());
}

class HngSlackApp extends StatelessWidget {
  const HngSlackApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "HNG Slack App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: ProfilePage(),
    );
  }
}
