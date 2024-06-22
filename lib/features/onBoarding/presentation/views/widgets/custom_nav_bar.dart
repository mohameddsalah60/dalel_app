import 'package:dalel_app/constants.dart';
import 'package:dalel_app/core/database/cache/cache_helper.dart';
import 'package:dalel_app/core/services/service_locator.dart';
import 'package:dalel_app/core/utils/app_colors.dart';
import 'package:dalel_app/core/utils/app_router.dart';
import 'package:dalel_app/core/utils/app_strings.dart';
import 'package:dalel_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        GoRouter.of(context).pushReplacement(AppRouter.kSignUp);
        await getIt<CacheHelper>()
            .saveData(key: kisOnBoardingVisited, value: true);
      },
      child: Align(
        alignment: Alignment.centerRight,
        child: Text(
          AppStrings.skip,
          style: AppStyles.sylesPoppinsRegular12.copyWith(
            fontSize: 16,
            color: AppColors.kDeepBlackColor,
          ),
        ),
      ),
    );
  }
}
