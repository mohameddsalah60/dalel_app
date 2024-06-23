import 'package:dalel_app/core/utils/app_colors.dart';
import 'package:dalel_app/core/utils/app_strings.dart';
import 'package:dalel_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

import 'custom_check_box.dart';

class TermsAndConditionSignUp extends StatelessWidget {
  const TermsAndConditionSignUp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CustomCheckBox(),
        Text(
          AppStrings.iHaveAgreeToOur,
          style: AppStyles.sylesPoppinsRegular14.copyWith(
            color: AppColors.kDeepGreyColor,
          ),
        ),
        Text(
          AppStrings.termsAndCondition,
          style: AppStyles.sylesPoppinsRegular14.copyWith(
            color: AppColors.kDeepGreyColor,
            decoration: TextDecoration.underline,
          ),
        ),
      ],
    );
  }
}
