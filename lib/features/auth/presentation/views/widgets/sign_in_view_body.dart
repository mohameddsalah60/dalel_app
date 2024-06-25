import 'package:dalel_app/core/utils/app_strings.dart';
import 'package:dalel_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

import 'custom_signin_form.dart';
import 'sign_in_welcome_banner.dart';

class SignInViewBody extends StatelessWidget {
  const SignInViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              const WelcomeBannerSignIn(),
              const SizedBox(
                height: 32,
              ),
              Text(
                AppStrings.welcomeBack,
                style: AppStyles.sylesPoppinsSemiBold24,
              ),
              const SizedBox(
                height: 48,
              ),
              const CustomSigninForm(),
            ],
          ),
        ),
      ],
    );
  }
}
