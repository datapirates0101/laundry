import 'package:flutter/material.dart';
import 'package:laundry/utils/style.dart';

Column categoryWidget(String img, String name, bool isActive) {
  return Column(
    children: [
      Container(
        height: 70,
        width: 70,
        decoration: BoxDecoration(
            color: isActive ? null : Colors.grey.withOpacity(0.3),
            gradient: isActive ? kGradientStyle : null,
            shape: BoxShape.circle),
        child: Center(
          child: Container(
            margin: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/$img.png',
                ),
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
      ),
      Text(
        name,
        style: headingStyle,
      )
    ],
  );
}
