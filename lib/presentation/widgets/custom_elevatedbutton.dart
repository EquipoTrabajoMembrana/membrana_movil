import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final Function()? onPressed;
  final String? text;
  final IconData? leadingIcon;
  final IconData? trailingIcon;
  final bool showLeadingIcon;
  final bool showTrailingIcon;
  final bool isBackground;
  final Color? backColor;
  final Color? colorText;
  const CustomElevatedButton({
    super.key,
    this.onPressed,
    this.text,
    this.leadingIcon,
    this.trailingIcon,
    this.showLeadingIcon = false,
    this.showTrailingIcon = false,
    this.isBackground = true,
    this.backColor,
    this.colorText,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final buttonColor = isBackground
        ? theme.colorScheme.onPrimary
        : (backColor ?? theme.colorScheme.primary);
    final textColor = isBackground ? theme.colorScheme.primary : colorText;
    final iconColor =
        isBackground ? theme.colorScheme.primary : theme.colorScheme.onPrimary;
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
