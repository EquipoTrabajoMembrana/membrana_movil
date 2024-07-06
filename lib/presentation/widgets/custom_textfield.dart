import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController? textController;
  final void Function()? onTap;
  final String? labelText;
  final String? hintText;
  final String obscureTextCharacter;
  final String initValue;
  final IconData? icon;
  final TextInputType keyboardType;
  final TextInputAction? textInputAction;
  final bool showPass;
  final bool isEnabled;
  final bool onlyRead;

  const CustomTextField({
    super.key,
    this.textController,
    this.onTap,
    this.labelText,
    this.hintText,
    this.obscureTextCharacter = "*",
    this.icon,
    this.initValue = "",
    this.showPass = false,
    this.isEnabled = true,
    this.onlyRead = false,
    this.keyboardType = TextInputType.name,
    this.textInputAction = TextInputAction.next,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool showPassword = false;
  void togglevisibility() {
    setState(() {
      showPassword = !showPassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final primaryColor = theme.colorScheme.primary;
    final onSurfaceColor = theme.colorScheme.onSurface;
    final inputBorder = OutlineInputBorder(
      borderSide: BorderSide(
        color: onSurfaceColor,
      ),
      borderRadius: const BorderRadius.all(
        Radius.circular(10.0),
      ),
    );

    return Material(
      color: Colors.transparent,
      child: TextFormField(
        style: theme.textTheme.bodyMedium,
        controller: widget.textController,
        onTap: widget.onTap,
        keyboardType: widget.keyboardType,
        textInputAction: widget.textInputAction,
        decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.always,
          focusedBorder: inputBorder,
          border: inputBorder,
          prefixIcon: widget.icon == null
              ? null
              : Icon(
                  widget.icon,
                  color: primaryColor,
                ),
          suffixIcon: widget.showPass == false
              ? null
              : GestureDetector(
                  onTap: () {
                    togglevisibility();
                  },
                  child: Icon(
                    !showPassword ? Icons.visibility : Icons.visibility_off,
                    color: primaryColor,
                  ),
                ),
          labelText: widget.labelText,
          labelStyle: theme.textTheme.bodyLarge?.copyWith(
            color: primaryColor,
          ),
          hintText: widget.hintText,
          hintStyle: theme.textTheme.bodyMedium,
        ),
        obscureText: widget.showPass == true ? !showPassword : false,
        obscuringCharacter: widget.obscureTextCharacter,
        enabled: widget.isEnabled,
        readOnly: widget.onlyRead,
        initialValue: widget.initValue,
      ),
    );
  }
}
