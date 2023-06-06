import 'package:facebook_projuct_01/widgets/avathar.dart';
import 'package:facebook_projuct_01/widgets/circularButton.dart';
import 'package:flutter/material.dart';

class StoryCard extends StatelessWidget {
  final String story;
  final String lebalText;
  final String storyImage;
  final bool createStoryStatus;
  final bool diplayBorder;
  StoryCard({
    required this.story,
    required this.lebalText,
    required this.storyImage,
    this.createStoryStatus = false,
    this.diplayBorder = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: const EdgeInsets.only(
        left: 5,
        right: 5,
        top: 10,
        bottom: 10,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(story),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 5,
            left: 5,
            child: createStoryStatus
                ? CircularButton(
                    buttonIcon: Icons.add,
                    buttonAction: (() {
                      print("story card button clicked");
                    }),
                    iconColor: Colors.blue,
                  )
                : Avatar(
                    displayImage: storyImage,
                    avatarImage: false,
                    displayBorder: diplayBorder,
                    width: 35,
                    height: 35,
                  ),
          ),
          Positioned(
            bottom: 10,
            left: 10,
            child: Text(
              lebalText,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
