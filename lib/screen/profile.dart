// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HNG Slack App"),
        centerTitle: true,
        automaticallyImplyLeading: false,
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(
                "asset/shed.jpeg",
              ),
              radius: 50.5,
            ),
            SizedBox(height: 12.5),
            Text(
              "Shedrack Abel Nicholas",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.5,
                letterSpacing: 1.5,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 12.5),
            ElevatedButton.icon(
              onPressed: () async {
                const url = "https://github.com/MadeByShedrack";
                if (await canLaunchUrl(Uri.parse(url))) {
                  await launchUrl(Uri.parse(url));
                } else {
                  throw "could not launch $url";
                }
              },
              icon: Icon(FontAwesomeIcons.github),
              label: Text("Open Github"),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black,
                backgroundColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
