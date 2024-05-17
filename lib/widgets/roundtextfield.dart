import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class RoundTextfield extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final TextInputType? keybardType;
  final bool obscureText;
  const RoundTextfield({super.key, required this.controller , required this.hintText, this.obscureText= false, required this.keybardType,});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: kShadowColor,  // "textbox"; Unknown word.
          borderRadius: BorderRadius.circular(20)),
      child: TextField(
        controller: controller,
        keyboardType: keybardType,
          obscureText: obscureText,
          decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
            vertical: 15,horizontal: 15),
        focusedBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        hintText: hintText,
        labelStyle: const TextStyle(
          fontSize: 15,
        ),
      ),
      ),
    );
  }
}
