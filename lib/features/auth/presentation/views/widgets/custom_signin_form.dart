import 'package:dalel_app/core/functions/custom_snack%20_bar.dart';
import 'package:dalel_app/core/utils/app_colors.dart';
import 'package:dalel_app/core/utils/app_router.dart';
import 'package:dalel_app/core/utils/app_strings.dart';
import 'package:dalel_app/core/utils/app_styles.dart';
import 'package:dalel_app/core/widgets/custom_button.dart';
import 'package:dalel_app/core/widgets/custom_progress_indicator.dart';
import 'package:dalel_app/core/widgets/custom_text_field.dart';
import 'package:dalel_app/features/auth/presentation/auth_cubit/cubit/auth_cubit.dart';
import 'package:dalel_app/features/auth/presentation/views/widgets/have_an_account_widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class CustomSigninForm extends StatelessWidget {
  const CustomSigninForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) async {
        if (state is AuthSignInSuccessState) {
          if (FirebaseAuth.instance.currentUser!.emailVerified) {
            GoRouter.of(context).pushReplacement(AppRouter.kHomeNavBarWidget);
          } else {
            customSnackBar(
              text: "Please Verify Your Account",
              color: AppColors.kDeepBlackColor,
              context,
            );
          }
        } else if (state is AuthSignInFailureState) {
          customSnackBar(
            context,
            text: state.errMessage,
            color: AppColors.kDeepBlackColor,
          );
        }
      },
      builder: (context, state) {
        AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Form(
            key: authCubit.signInFormKey,
            child: Column(
              children: [
                CustomTextField(
                  labelText: AppStrings.emailAddress,
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
                  style: AppStyles.sylesPoppinsSemiBold24.copyWith(
                    fontWeight: FontWeight.w900,
                    fontSize: 17,
                  ),
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
                  height: 16,
                ),
                GestureDetector(
                  onTap: () {
                    GoRouter.of(context).push(AppRouter.kForgotPassword);
                  },
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      AppStrings.forgotPassword,
                      style: AppStyles.sylesPoppinsSemiBold24.copyWith(
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 102,
                ),
                state is AuthSignInLoadingState
                    ? const CustomProgressIndicator()
                    : CustomButton(
                        text: AppStrings.signIn,
                        onPressed: () async {
                          if (authCubit.signInFormKey.currentState!
                              .validate()) {
                            await authCubit.signInWithEmailAndPassword();
                          }
                        },
                      ),
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
          ),
        );
      },
    );
  }
}
