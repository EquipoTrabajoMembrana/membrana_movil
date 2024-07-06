import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final Function()? onPressed;
  final String? text;
  const CustomTextButton({super.key, this.onPressed, this.text});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final primaryColor = theme.colorScheme.primary;

    return Material(
      color: Colors.transparent,
      child: TextButton(
        style: TextButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 5.0),
        ),
        onPressed: onPressed,
        child: Text(
          text ?? '',
          style: theme.textTheme.bodyMedium?.copyWith(
            fontWeight: FontWeight.w800,
            color: primaryColor,
          ),
        ),
      ),
    );
  }
}
