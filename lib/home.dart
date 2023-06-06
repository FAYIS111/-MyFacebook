import 'package:facebook_projuct_01/sections/headerButton.dart';
import 'package:facebook_projuct_01/sections/roomsection.dart';
import 'package:facebook_projuct_01/sections/status.dart';
import 'package:facebook_projuct_01/sections/storySection.dart';
import 'package:facebook_projuct_01/widgets/buttonHeader.dart';
import 'package:facebook_projuct_01/widgets/postCard.dart';

import 'package:flutter/material.dart';
import 'package:facebook_projuct_01/widgets/circularButton.dart';

class Home extends StatelessWidget {
  Widget thinDivider = const Divider(
    thickness: 1,
    color: Colors.grey,
  );
  Widget thickDivider = const Divider(
    thickness: 10,
    color: Color.fromARGB(255, 224, 211, 211),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
            "facebook",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            CircularButton(
              buttonAction: (() {
                print("clicked");
              }),
              buttonIcon: Icons.search,
            ),
            CircularButton(
              buttonAction: (() {
                print("clicked chat button");
              }),
              buttonIcon: Icons.chat,
            ),
          ],
        ),
        body: ListView(
          children: [
            Status(),
            thinDivider,
            HeaderButton(
              buttonOne: headerButton(
                labelText: "Live",
                iconColor: Colors.red,
                buttonIcon: Icons.video_call,
                buttonAction: (() {
                  print("button clicked");
                }),
              ),
              buttonTwo: headerButton(
                labelText: "Photo",
                iconColor: Colors.green,
                buttonIcon: Icons.photo_album,
                buttonAction: (() {
                  print("button clicked");
                }),
              ),
              buttonThree: headerButton(
                labelText: "Room",
                iconColor: Colors.purple,
                buttonIcon: Icons.video_call,
                buttonAction: (() {
                  print("button clicked");
                }),
              ),
            ),
            thickDivider,
            RoomSection(),
            thickDivider,
            StorySection(),
            thickDivider,
            PostCard(
              avatar: "assets/propics/fayi.jpg",
              name: "fayis m t",
              publishedAt: "5 h",
              postTitle: "Happy Dewali",
              postImage: "assets/propics/fayi.jpg",
              showBlueTick: false,
              likeCount: "10 k",
              shareCount: "1 k",
              commentCount: "1 k",
            ),
            thickDivider,
          ],
        ),
      ),
    );
  }
}
