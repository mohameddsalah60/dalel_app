import 'package:dalel_app/core/utils/app_strings.dart';
import 'package:dalel_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class ForgotPasswordsubTitle extends StatelessWidget {
  const ForgotPasswordsubTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      AppStrings.passwordResetInstruction,
      style: AppStyles.sylesPoppinsRegular14,
      textAlign: TextAlign.center,
    );
  }
}
