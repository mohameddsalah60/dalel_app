import 'package:dalel_app/constants.dart';
import 'package:dalel_app/core/database/cache/cache_helper.dart';
import 'package:dalel_app/core/services/service_locator.dart';
import 'package:dalel_app/core/utils/app_colors.dart';
import 'package:dalel_app/core/utils/app_router.dart';
import 'package:dalel_app/core/utils/app_strings.dart';
import 'package:dalel_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
            if (currnetPageIndex != 2) {
              pageController.nextPage(
                duration: const Duration(microseconds: 200),
                curve: Curves.bounceIn,
              );
            } else {
              GoRouter.of(context).pushReplacement(AppRouter.kSignUp);
              getIt<CacheHelper>()
                  .saveData(key: kisOnBoardingVisited, value: true);
            }
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
