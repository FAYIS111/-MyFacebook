import 'package:facebook_projuct_01/widgets/storyCard.dart';
import 'package:flutter/material.dart';

class StorySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(
            story: "assets/propics/mammoty5.jpg",
            lebalText: "dulquer",
            storyImage: "assets/propics/mammoty5.jpg",
            createStoryStatus: true,
          ),
          StoryCard(
            story: "assets/propics/dq3.jpg",
            lebalText: "Add to story",
            storyImage: "assets/propics/dq3.jpg",
            diplayBorder: true,
          ),
          StoryCard(
            story: "assets/propics/fayi.jpg",
            lebalText: "fayis",
            storyImage: "assets/propics/fayi.jpg",
            diplayBorder: true,
          ),
          StoryCard(
            story: "assets/propics/mammoty3.jpg",
            lebalText: "dulquer",
            storyImage: "assets/propics/mammoty3.jpg",
            diplayBorder: true,
          ),
          StoryCard(
            story: "assets/propics/fayi2.jpg",
            lebalText: "Add to story",
            storyImage: "assets/propics/fayi2.jpg",
            diplayBorder: true,
          ),
          StoryCard(
            story: "assets/propics/dq6.jpg",
            lebalText: "Add to story",
            storyImage: "assets/propics/dq6.jpg",
            diplayBorder: true,
          ),
        ],
      ),
    );
  }
}
