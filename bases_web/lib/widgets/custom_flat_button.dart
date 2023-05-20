import 'package:flutter/material.dart';

class CustomFlatButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;
  final Color? color;
  const CustomFlatButton({Key? key, this.onPressed, required this.text, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        foregroundColor: color,
      ),
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
