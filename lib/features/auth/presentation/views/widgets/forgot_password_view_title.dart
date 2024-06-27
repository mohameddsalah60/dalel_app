import 'package:dalel_app/core/utils/app_strings.dart';
import 'package:dalel_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class ForgotPasswordTitle extends StatelessWidget {
  const ForgotPasswordTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      child: Text(
        AppStrings.forgotPasswordPage,
        style: AppStyles.sylesPoppinsSemiBold24,
      ),
    );
  }
}
