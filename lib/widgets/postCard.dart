import 'package:facebook_projuct_01/sections/headerButton.dart';
import 'package:facebook_projuct_01/widgets/avathar.dart';
import 'package:facebook_projuct_01/widgets/bluetick.dart';
import 'package:facebook_projuct_01/widgets/buttonHeader.dart';
import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  final String avatar;
  final String name;
  final String publishedAt;
  final String postTitle;
  final String postImage;
  final bool showBlueTick;
  final String likeCount;
  final String shareCount;
  final String commentCount;
  PostCard({
    required this.avatar,
    required this.name,
    required this.publishedAt,
    required this.postTitle,
    required this.postImage,
    this.showBlueTick = false,
    required this.likeCount,
    required this.shareCount,
    required this.commentCount,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          postCardHeader(),
          titleSection(),
          imageSection(),
          footerSection(),
          const Divider(
            color: Colors.grey,
            thickness: 1,
          ),
          HeaderButton(
            buttonOne: headerButton(
              labelText: "Like",
              iconColor: Colors.grey,
              buttonIcon: Icons.thumb_up_alt_outlined,
              buttonAction: (() {
                print("button clicked");
              }),
            ),
            buttonTwo: headerButton(
              labelText: "Comment",
              iconColor: Colors.grey,
              buttonIcon: Icons.message_outlined,
              buttonAction: (() {
                print("button clicked");
              }),
            ),
            buttonThree: headerButton(
              labelText: "Share",
              iconColor: Colors.grey,
              buttonIcon: Icons.share_outlined,
              buttonAction: (() {
                print("button clicked");
              }),
            ),
          ),
        ],
      ),
    );
  }

  Widget footerSection() {
    return Container(
      height: 50,
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  height: 15,
                  width: 15,
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.thumb_up,
                    color: Colors.white,
                    size: 10,
                  ),
                ),
                displayText(lebal: likeCount),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                displayText(lebal: shareCount),
                SizedBox(width: 5),
                displayText(lebal: "comments"),
                const SizedBox(
                  width: 5,
                ),
                displayText(lebal: commentCount),
                const SizedBox(
                  width: 5,
                ),
                displayText(lebal: "shares"),
                SizedBox(width: 10),
                Avatar(
                  displayImage: avatar,
                  avatarImage: false,
                  width: 25,
                  height: 25,
                ),
                IconButton(
                  onPressed: (() {
                    print("drop down pressed");
                  }),
                  icon: const Icon(
                    Icons.arrow_drop_down,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget displayText({required String lebal}) {
    return Text(
      lebal == null ? "" : lebal,
      style: TextStyle(
        color: Colors.black,
      ),
    );
  }

  Widget titleSection() {
    return Container(
      padding: EdgeInsets.only(bottom: 5),
      child: Text(
        postTitle == null ? "" : postTitle,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 16,
        ),
      ),
    );
  }

  Widget imageSection() {
    return Container(
      padding: const EdgeInsets.only(
        top: 5,
        bottom: 5,
      ),
      child: Image.asset(postImage),
    );
  }

  Widget postCardHeader() {
    return ListTile(
      leading: Avatar(
        displayImage: "assets/propics/fayi.jpg",
        avatarImage: false,
      ),
      title: Row(
        children: [
          Text(
            name,
            style: const TextStyle(
              color: Colors.black,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          showBlueTick ? BlueTick() : SizedBox(),
        ],
      ),
      subtitle: Row(
        children: [
          Text(
            publishedAt == null ? "" : publishedAt,
          ),
          const SizedBox(
            width: 10,
          ),
          const Icon(
            Icons.public,
            color: Color.fromARGB(255, 201, 191, 191),
            size: 15,
          )
        ],
      ),
      trailing: IconButton(
        onPressed: (() {
          print("open more menu");
        }),
        icon: const Icon(
          Icons.more_horiz,
          color: Colors.grey,
        ),
      ),
    );
  }
}
