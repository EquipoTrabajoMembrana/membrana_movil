import 'dart:developer';

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
    return Material(
      color: Colors.transparent,
      child: TextFormField(
        style: TextStyle(
          fontFamily: 'Teachers',
        ),
        controller: widget.textController,
        onTap: widget.onTap,
        keyboardType: widget.keyboardType,
        textInputAction: widget.textInputAction,
        decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.always,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFF495057),
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
          ),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
          ),
          prefixIcon: widget.icon == null ? null : Icon(widget.icon),
          prefixIconColor: const Color(0xFF14213d),
          suffixIcon: widget.showPass == false
              ? null
              : GestureDetector(
                  onTap: () {
                    togglevisibility();
                    log('message');
                  },
                  child: Icon(
                    !showPassword ? Icons.visibility : Icons.visibility_off,
                    color: const Color(0xFF14213d),
                  ),
                ),
          suffixIconColor: const Color(0xFF14213d),
          labelText: widget.labelText,
          labelStyle:
              const TextStyle(color: Color(0xFF14213d), fontFamily: 'Teachers'),
          hintText: widget.hintText,
          hintStyle: const TextStyle(fontFamily: 'Teachers'),
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
