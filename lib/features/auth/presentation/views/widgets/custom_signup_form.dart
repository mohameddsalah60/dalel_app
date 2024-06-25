import 'package:dalel_app/core/utils/app_strings.dart';
import 'package:dalel_app/core/utils/app_styles.dart';
import 'package:dalel_app/core/widgets/custom_button.dart';
import 'package:dalel_app/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

import 'terms_and_condition_signup.dart';

class CustomSignupForm extends StatelessWidget {
  const CustomSignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          const CustomTextField(
            labelText: 'First Name',
          ),
          const SizedBox(
            height: 24,
          ),
          const CustomTextField(
            labelText: 'Last Name',
          ),
          const SizedBox(
            height: 24,
          ),
          const CustomTextField(
            labelText: 'Email Address',
          ),
          const SizedBox(
            height: 24,
          ),
          CustomTextField(
            labelText: 'Password',
            obscureText: true,
            style: AppStyles.sylesPoppinsSemiBold24.copyWith(
              fontWeight: FontWeight.w900,
            ),
            suffixIcon: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.visibility_outlined,
                  color: Color(0xff999999),
                )),
          ),
          const SizedBox(
            height: 24,
          ),
          const TermsAndConditionSignUp(),
          const SizedBox(
            height: 88,
          ),
          const CustomButton(text: AppStrings.signUp),
        ],
      ),
    );
  }
}
