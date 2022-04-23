import 'package:flutter/material.dart';
import 'package:laundry/widgets/onBoarding.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  PageController _pageController = PageController(
    initialPage: 0,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/bg.png"),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 500,
                child: PageView(
                  controller: _pageController,
                  children: [
                    OnboardingCard(
                      img: "onBoard1",
                      title: "Choose Clothes",
                    ),
                    OnboardingCard(
                      img: "onBoard2",
                      title: "Schedule Pickup",
                    ),
                    OnboardingCard(
                      img: "onBoard3",
                      title: "Get Best Iron Service",
                    ),
                    OnboardingCard(
                      img: "onBoard2",
                      title: "On Time Delivery",
                    ),
                    OnboardingCard(
                      img: "onBoard4",
                      title: "Pay Later",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
