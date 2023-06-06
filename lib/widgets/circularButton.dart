import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  final IconData buttonIcon;
  final void Function() buttonAction;
  final Color iconColor;
  const CircularButton(
      {super.key,
      required this.buttonIcon,
      required this.buttonAction,
      this.iconColor = Colors.black});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 231, 221, 221),
        shape: BoxShape.circle,
      ),
      child: IconButton(
        onPressed: buttonAction,
        icon: Icon(
          buttonIcon,
          color: iconColor,
          size: 25,
        ),
      ),
    );
  }
}
