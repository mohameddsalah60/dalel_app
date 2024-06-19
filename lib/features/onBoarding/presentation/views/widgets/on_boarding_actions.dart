import 'package:dalel_app/core/utils/app_colors.dart';
import 'package:dalel_app/core/utils/app_strings.dart';
import 'package:dalel_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class OnBoardingActions extends StatelessWidget {
  const OnBoardingActions(
      {super.key,
      required this.pageController,
      required this.currnetPageIndex});
  final PageController pageController;
  final int currnetPageIndex;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomButton(
          onPressed: () {
            pageController.nextPage(
              duration: const Duration(microseconds: 200),
              curve: Curves.bounceIn,
            );
          },
          text: currnetPageIndex != 2
              ? AppStrings.next
              : AppStrings.createAccount,
        ),
        const SizedBox(
          height: 8,
        ),
        currnetPageIndex == 2
            ? CustomButton(
                text: 'Login Now!',
                textColor: AppColors.kBlackColor,
                background: WidgetStateColor.transparent,
              )
            : const SizedBox(),
      ],
    );
  }
}
