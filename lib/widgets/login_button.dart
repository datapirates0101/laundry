import 'package:flutter/material.dart';
import 'package:laundry/utils/style.dart';

class LoginButton extends StatelessWidget {
  final String text;
  final Function onTap;
  const LoginButton({
    Key? key,
    required this.onTap,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap(),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(40)),
          gradient: kGradientStyle,
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w700,
              fontFamily: 'sfpro',
            ),
          ),
        ),
      ),
    );
  }
}
