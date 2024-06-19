import 'package:flutter/material.dart';

import 'custom_dot_indicator.dart';

class OnBoardingDotsIndicator extends StatelessWidget {
  const OnBoardingDotsIndicator({super.key, required this.currnetPageIndex});
  final int currnetPageIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        3,
        (index) => Padding(
          padding: const EdgeInsets.only(right: 8),
          child: CustomDotIndicator(
            isActive: index == currnetPageIndex,
          ),
        ),
      ),
    );
  }
}
