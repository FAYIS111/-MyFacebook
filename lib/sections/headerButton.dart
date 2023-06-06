import 'package:flutter/material.dart';

class HeaderButton extends StatelessWidget {
  final Widget buttonOne;
  final Widget buttonTwo;
  final Widget buttonThree;
  HeaderButton({
    required this.buttonOne,
    required this.buttonTwo,
    required this.buttonThree,
  });

  @override
  Widget build(BuildContext context) {
    Widget verticalDivider = const VerticalDivider(
      thickness: 1.4,
      color: Color.fromARGB(255, 199, 189, 189),
    );

    return Container(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buttonOne,
          verticalDivider,
          buttonTwo,
          verticalDivider,
          buttonThree,
        ],
      ),
    );
  }
}
