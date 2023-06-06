import 'package:flutter/material.dart';

Widget headerButton({
  required String labelText,
  required Color iconColor,
  required IconData buttonIcon,
  required void Function() buttonAction,
}) {
  return TextButton.icon(
    onPressed: buttonAction,
    icon: Icon(
      buttonIcon,
      color: iconColor,
    ),
    label: Text(labelText),
  );
}
