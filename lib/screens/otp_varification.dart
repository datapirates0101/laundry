import 'dart:core';
import 'package:flutter/material.dart';
import 'package:laundry/utils/style.dart';
import 'package:laundry/widgets/login_button.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  late FocusNode pin2FocusNode;
  late FocusNode pin3FocusNode;
  late FocusNode pin4FocusNode;

  @override
  void initState() {
    pin2FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    pin2FocusNode.dispose();
    pin3FocusNode.dispose();
    pin4FocusNode.dispose();
    super.dispose();
  }

  void nextField({required String value, required FocusNode focusNode}) {
    if (value.length == 1) {
      focusNode.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'OTP Verification',
          style: TextStyle(color: Colors.black, fontFamily: 'sfpro'),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              const Text(
                "OTP Verification",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: Text(
                  "We sent your code to +91 879287****",
                  style: TextStyle(color: Colors.black54),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("This code will expire in "),
                  // TweenAnimationBuilder(
                  //   tween: Tween(begin: 30.0, end: 0.0),
                  //   duration: const Duration(seconds: 30),
                  //   builder: (context,value, child) => Text(
                  //     "00:${value.toInt()}",
                  //     style: TextStyle(color: Colors.orange),
                  //   ),
                  // ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.15),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 50,
                      child: TextFormField(
                        autofocus: true,
                        obscureText: true,
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        style: const TextStyle(fontSize: 24),
                        decoration: otpInputDecoration,
                        onChanged: (value) {
                          nextField(value: value, focusNode: pin2FocusNode);
                        },
                      ),
                    ),
                    SizedBox(
                      width: 50,
                      child: TextFormField(
                        focusNode: pin2FocusNode,
                        obscureText: true,
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        style: const TextStyle(fontSize: 24),
                        decoration: otpInputDecoration,
                        onChanged: (value) {
                          nextField(value: value, focusNode: pin3FocusNode);
                        },
                      ),
                    ),
                    SizedBox(
                      width: 50,
                      child: TextFormField(
                        focusNode: pin3FocusNode,
                        obscureText: true,
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        style: const TextStyle(fontSize: 24),
                        decoration: otpInputDecoration,
                        onChanged: (value) {
                          nextField(value: value, focusNode: pin4FocusNode);
                        },
                      ),
                    ),
                    SizedBox(
                      width: 50,
                      child: TextFormField(
                        focusNode: pin4FocusNode,
                        obscureText: true,
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        style: const TextStyle(fontSize: 24),
                        decoration: otpInputDecoration,
                        onChanged: (value) {
                          pin4FocusNode.unfocus();
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.1),
              LoginButton(widget: Text('Verify')),
              SizedBox(height: MediaQuery.of(context).size.height * 0.15),
              const Text(
                "Resend OTP",
                style: TextStyle(decoration: TextDecoration.underline),
              )
            ],
          ),
        ),
      ),
    );
  }
}
