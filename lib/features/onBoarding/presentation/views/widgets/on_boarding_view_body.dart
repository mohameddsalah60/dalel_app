import 'package:dalel_app/features/onBoarding/presentation/views/widgets/custom_nav_bar.dart';
import 'package:flutter/material.dart';

import 'on_boarding_actions.dart';
import 'on_boarding_pageview.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  PageController pageController = PageController();
  int currnetPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              const CustomNavBar(),
              const SizedBox(
                height: 32,
              ),
              OnBoardingPageview(
                onPageChanged: (index) {
                  currnetPageIndex = index;
                  setState(() {});
                },
                controller: pageController,
              ),
              OnBoardingActions(
                currnetPageIndex: currnetPageIndex,
                pageController: pageController,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
