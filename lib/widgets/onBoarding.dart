import 'package:flutter/material.dart';

class OnboardingCard extends StatelessWidget {
  final String img;
  final String title;
  const OnboardingCard({Key? key, required this.img, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 200,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(50),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/$img.png"),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Text(
            title,
            style: const TextStyle(
                fontSize: 30,
                fontFamily: 'roboto',
                fontWeight: FontWeight.w500),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 40),
          child: const Text(
            "info",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
                
            ),
          ),
        ),
      ],
    );
  }
}

