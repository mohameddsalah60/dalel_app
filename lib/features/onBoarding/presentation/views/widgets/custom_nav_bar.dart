import 'package:dalel_app/core/utils/app_colors.dart';
import 'package:dalel_app/core/utils/app_strings.dart';
import 'package:dalel_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Text(
        AppStrings.skip,
        style: AppStyles.sylesPoppinsRegular12.copyWith(
          fontSize: 16,
          color: AppColors.kDeepBlackColor,
        ),
      ),
    );
  }
}
