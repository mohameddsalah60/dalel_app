import 'package:dalel_app/core/functions/custom_snack%20_bar.dart';
import 'package:dalel_app/core/utils/app_colors.dart';
import 'package:dalel_app/core/utils/app_router.dart';
import 'package:dalel_app/core/utils/app_strings.dart';
import 'package:dalel_app/core/utils/app_styles.dart';
import 'package:dalel_app/core/widgets/custom_button.dart';
import 'package:dalel_app/core/widgets/custom_progress_indicator.dart';
import 'package:dalel_app/core/widgets/custom_text_field.dart';
import 'package:dalel_app/features/auth/presentation/auth_cubit/cubit/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'terms_and_condition_signup.dart';

class CustomSignupForm extends StatelessWidget {
  const CustomSignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is AuthSignUpSuccessState) {
          customSnackBar(
            text: "Successfully,Check your email to verfiy your account",
            context,
          );
          GoRouter.of(context).pushReplacement(AppRouter.kSignIn);
        } else if (state is AuthSignUpFailureState) {
          customSnackBar(
            context,
            text: state.errMessage,
            color: AppColors.kDeepBlackColor,
          );
        }
      },
      builder: (context, state) {
        AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);
        return Form(
          key: authCubit.signupFormKey,
          child: Column(
            children: [
              CustomTextField(
                labelText: 'First Name',
                onChanged: (value) {
                  authCubit.firstName = value;
                },
              ),
              const SizedBox(
                height: 24,
              ),
              CustomTextField(
                labelText: 'Last Name',
                onChanged: (value) {
                  authCubit.lastName = value;
                },
              ),
              const SizedBox(
                height: 24,
              ),
              CustomTextField(
                labelText: 'Email Address',
                onChanged: (value) {
                  authCubit.emailAddress = value;
                },
              ),
              const SizedBox(
                height: 24,
              ),
              CustomTextField(
                labelText: 'Password',
                obscureText: authCubit.obscurePasswordTextValue,
                onChanged: (value) {
                  authCubit.password = value;
                },
                style: AppStyles.sylesPoppinsSemiBold24
                    .copyWith(fontWeight: FontWeight.w900, fontSize: 16),
                suffixIcon: IconButton(
                    onPressed: () {
                      authCubit.obscurePasswordText();
                    },
                    icon: Icon(
                      authCubit.obscurePasswordTextValue!
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined,
                      color: const Color(0xff999999),
                    )),
              ),
              const SizedBox(
                height: 24,
              ),
              const TermsAndConditionSignUp(),
              const SizedBox(
                height: 88,
              ),
              state is AuthSignInLoadingState
                  ? const CustomProgressIndicator()
                  : CustomButton(
                      text: AppStrings.signUp,
                      background:
                          authCubit.termsAndConditionCheckBoxValue == false
                              ? AppColors.kGreyColor
                              : null,
                      onPressed: () {
                        if (authCubit.termsAndConditionCheckBoxValue == true) {
                          if (authCubit.signupFormKey.currentState!
                              .validate()) {
                            authCubit.signUpUserWithEmailAndPassword();
                          }
                        }
                      },
                    ),
            ],
          ),
        );
      },
    );
  }
}
