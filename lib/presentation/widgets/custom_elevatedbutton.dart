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
    return Material(
      color: Colors.transparent,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          backgroundColor:
              notBackgroundColor ? Colors.white : const Color(0xFF14213d),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            showLeadingIcon == true
                ? Icon(
                    leadingIcon,
                    color: const Color(0xFFf8f9fa),
                  )
                : const SizedBox.shrink(),
            Text(
              text ?? '',
              style: TextStyle(
                color:
                    notBackgroundColor ? Color(0xFF14213d) : Color(0xFFf8f9fa),
                fontFamily: 'Teachers',
              ),
            ),
            showTrailingIcon == true
                ? Icon(
                    trailingIcon,
                    color: const Color(0xFFf8f9fa),
                  )
                : const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
