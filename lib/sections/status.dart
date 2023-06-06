import 'package:facebook_projuct_01/widgets/avathar.dart';
import 'package:flutter/material.dart';

class Status extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading:
          Avatar(displayImage: "assets/propics/dq3.jpg", avatarImage: false),
      title: const TextField(
        keyboardType: TextInputType.multiline,
        decoration: InputDecoration(
            hintText: "what's in your mind",
            hintStyle: TextStyle(
              color: Colors.black,
            ),
            enabledBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            focusedBorder: InputBorder.none),
      ),
    );
  }
}
