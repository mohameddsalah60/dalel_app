import 'package:dalel_app/core/utils/app_router.dart';
import 'package:dalel_app/core/utils/app_strings.dart';
import 'package:dalel_app/core/utils/app_styles.dart';
import 'package:dalel_app/core/widgets/custom_button.dart';
import 'package:dalel_app/core/widgets/custom_text_field.dart';
import 'package:dalel_app/features/auth/presentation/views/widgets/have_an_account_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomSigninForm extends StatelessWidget {
  const CustomSigninForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const CustomTextField(
            labelText: AppStrings.emailAddress,
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
            height: 16,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              AppStrings.forgotPassword,
              style: AppStyles.sylesPoppinsSemiBold24.copyWith(
                fontSize: 14,
              ),
            ),
          ),
          const SizedBox(
            height: 102,
          ),
          const CustomButton(text: AppStrings.signIn),
          const SizedBox(
            height: 16,
          ),
          HaveAnAccountWidget(
            text1: AppStrings.dontHaveAnAccount,
            text2: AppStrings.signIn,
            onTap: () {
              GoRouter.of(context).pushReplacement(AppRouter.kSignUp);
            },
          ),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
