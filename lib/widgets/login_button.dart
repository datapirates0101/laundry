import 'package:flutter/material.dart';
import 'package:laundry/utils/style.dart';

class LoginButton extends StatelessWidget {
  final Widget widget;
  const LoginButton({
    Key? key,
    required this.widget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(40)),
        gradient: kGradientStyle,
      ),
      child: Center(
        child: widget
      ),
    );
  }
}
