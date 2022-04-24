import 'package:flutter/material.dart';
import 'package:laundry/screens/login_screen.dart';
import 'package:laundry/utils/style.dart';
import 'package:laundry/widgets/onBoarding.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  int currentPage = 0;
  final PageController _pageController = PageController(
    initialPage: 0,
  );

  AnimatedContainer getIndicator(int pageNo) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 100),
      height: 10,
      width: currentPage == pageNo ? 20 : 10,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        color: currentPage == pageNo ? Colors.orange : Colors.grey,
        borderRadius: const BorderRadius.all(
          Radius.circular(5),
        ),
      ),
    );
  }

  void changePage() {
    if (currentPage == 4) {
      Navigator.push(
          context, MaterialPageRoute(builder: ((context) => LoginPage())));
    } else {
      _pageController.animateToPage(currentPage + 1,
          duration: const Duration(milliseconds: 200), curve: Curves.linear);
    }
  }

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
              SizedBox(
                height: 500,
                child: PageView(
                  controller: _pageController,
                  children: const [
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
                  onPageChanged: (value) => setState(() {
                    currentPage = value;
                  }),
                ),
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(5, (index) => getIndicator(index))),
            ],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: InkWell(
              onTap: changePage,
              splashColor: Colors.white,
              child: Container(
                height: 70,
                width: 70,
                margin: const EdgeInsets.only(bottom: 30),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: kGradientStyle,
                ),
                child: const Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                  size: 40,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
