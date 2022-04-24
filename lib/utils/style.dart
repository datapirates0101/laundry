import 'package:flutter/material.dart';

LinearGradient kGradientStyle = const LinearGradient(
    colors: [Color(0xfff3953b), Color(0xffe57509)],
    stops: [0, 1],
    begin: Alignment.topCenter);

const otpInputDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 10),
  enabledBorder: OutlineInputBorder(),
  focusedBorder: OutlineInputBorder(),
  border: OutlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(15),
    borderSide: const BorderSide(
      color: Color(0xFF757575),
    ),
  );
}

TextStyle headingStyle =
    const TextStyle(fontSize: 20, fontWeight: FontWeight.w700);
TextStyle contentStyle = const TextStyle(fontSize: 16);
