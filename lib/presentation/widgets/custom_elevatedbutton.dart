import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final Function()? onPressed;
  final String? text;
  final IconData? leadingIcon;
  final IconData? trailingIcon;
  final bool showLeadingIcon;
  final bool showTrailingIcon;
  final bool notBackgroundColor;
  const CustomElevatedButton({
    super.key,
    this.onPressed,
    this.text,
    this.leadingIcon,
    this.trailingIcon,
    this.showLeadingIcon = false,
    this.showTrailingIcon = false,
    this.notBackgroundColor = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final buttonColor = notBackgroundColor
        ? theme.colorScheme.onPrimary
        : theme.colorScheme.primary;
    final textColor = notBackgroundColor
        ? theme.colorScheme.primary
        : theme.colorScheme.onPrimary;
    final iconColor = notBackgroundColor
        ? theme.colorScheme.primary
        : theme.colorScheme.onPrimary;
    return Material(
      color: Colors.transparent,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          backgroundColor: buttonColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            showLeadingIcon == true
                ? Icon(
                    leadingIcon,
                    color: iconColor,
                  )
                : const SizedBox.shrink(),
            Text(
              text ?? '',
              style: theme.textTheme.bodyMedium?.copyWith(
                color: textColor,
              ),
            ),
            showTrailingIcon == true
                ? Icon(
                    trailingIcon,
                    color: iconColor,
                  )
                : const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
