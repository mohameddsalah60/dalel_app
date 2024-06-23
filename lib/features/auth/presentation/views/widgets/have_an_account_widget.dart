import 'package:dalel_app/core/utils/app_colors.dart';
import 'package:dalel_app/core/utils/app_strings.dart';
import 'package:dalel_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class HaveAnAccountWidget extends StatelessWidget {
  const HaveAnAccountWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          AppStrings.alreadyHaveAnAccount,
          style: AppStyles.sylesPoppinsRegular14,
        ),
        GestureDetector(
          onTap: () {},
          child: Text(
            AppStrings.signIn,
            style: AppStyles.sylesPoppinsRegular14.copyWith(
              color: AppColors.kDeepGreyColor3,
            ),
          ),
        ),
      ],
    );
  }
}
