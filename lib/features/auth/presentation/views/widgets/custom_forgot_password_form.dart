import 'package:dalel_app/core/utils/app_strings.dart';
import 'package:dalel_app/core/widgets/custom_button.dart';
import 'package:dalel_app/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class CustomForgotPasswordForm extends StatelessWidget {
  const CustomForgotPasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomTextField(
          labelText: AppStrings.emailAddress,
        ),
        SizedBox(
          height: 126,
        ),
        CustomButton(text: AppStrings.sendVerifyCode),
      ],
    );
  }
}
