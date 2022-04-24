import 'package:flutter/material.dart';
import 'package:laundry/utils/style.dart';

Container clothWidget(
    String img, String name, String price, BuildContext context) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 5),
    width: MediaQuery.of(context).size.width,
    child: Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/$img.png',
                    ),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: headingStyle,
                  ),
                  Text(
                    "\$$price",
                    style: headingStyle.copyWith(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    'Add Note',
                    style: headingStyle.copyWith(
                      color: Colors.orange,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              Text(
                '\$45',
                style: headingStyle,
              ),
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      gradient: kGradientStyle,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text(
                        '-',
                        style: headingStyle.copyWith(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                    width: 40,
                    child: Center(
                      child: Text(
                        '1',
                        style: headingStyle.copyWith(fontSize: 25),
                      ),
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      gradient: kGradientStyle,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text(
                        '+',
                        style: headingStyle.copyWith(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: 1,
              width: MediaQuery.of(context).size.width * 0.70,
              color: Colors.grey,
            ),
          ],
        ),
      ],
    ),
  );
}
