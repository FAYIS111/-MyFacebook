import 'dart:async';

import 'package:facebook_projuct_01/widgets/avathar.dart';
import 'package:flutter/material.dart';

class RoomSection extends StatelessWidget {
  Widget createRoomButton() {
    return Container(
      padding: const EdgeInsets.only(left: 5, right: 5),
      child: OutlinedButton.icon(
        onPressed: (() {
          print("icon button clicked");
        }),
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
            const StadiumBorder(),
          ),
          side: MaterialStateProperty.all(
            const BorderSide(
              color: Color.fromARGB(255, 82, 161, 226),
              width: 2,
            ),
          ),
        ),
        icon: const Icon(Icons.video_call, color: Colors.red),
        label: const Text(
          "create \nroom",
          style: TextStyle(
            color: Colors.blue,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.all(10),
        children: [
          createRoomButton(),
          Avatar(displayImage: "assets/propics/dq3.jpg", avatarImage: true),
          Avatar(displayImage: "assets/propics/fayi.jpg", avatarImage: true),
          Avatar(displayImage: "assets/propics/dq3.jpg", avatarImage: true),
          Avatar(displayImage: "assets/propics/fayi.jpg", avatarImage: true),
          Avatar(displayImage: "assets/propics/dq3.jpg", avatarImage: true),
          Avatar(displayImage: "assets/propics/fayi.jpg", avatarImage: true),
          Avatar(displayImage: "assets/propics/dq3.jpg", avatarImage: true),
          Avatar(displayImage: "assets/propics/fayi.jpg", avatarImage: true),
          Avatar(displayImage: "assets/propics/dq3.jpg", avatarImage: true),
        ],
      ),
    );
  }
}
