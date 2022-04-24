import 'package:flutter/material.dart';
import 'package:laundry/screens/login_screen.dart';
import 'package:laundry/screens/otp_varification.dart';
import 'package:laundry/screens/signup_screen.dart';
import 'package:laundry/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OtpScreen(),
    );
  }
}
