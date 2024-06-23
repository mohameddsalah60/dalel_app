import 'package:dalel_app/core/utils/app_strings.dart';
import 'package:dalel_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

import 'custom_signup_form.dart';
import 'have_an_account_widget.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
        child: ListView(
          children: [
            Align(
              child: Text(
                AppStrings.appName,
                style: AppStyles.sylesPacificoRegular20.copyWith(
                  fontSize: 116,
                ),
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            const CustomSignupForm(),
            const SizedBox(
              height: 16,
            ),
            const HaveAnAccountWidget(),
          ],
        ),
      ),
    );
  }
}
