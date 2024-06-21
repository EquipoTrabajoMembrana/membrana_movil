import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final Function()? onPressed;
  final String? text;
  const CustomTextButton({super.key, this.onPressed, this.text});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: TextButton(
        style: TextButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 5.0),
        ),
        onPressed: onPressed,
        child: Text(
          text ?? '',
          style: const TextStyle(
            fontWeight: FontWeight.w800,
            color: Color(0xFF14213d),
            fontFamily: 'Teachers',
          ),
        ),
      ),
    );
  }
}
