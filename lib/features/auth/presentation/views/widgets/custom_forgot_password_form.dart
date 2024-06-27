import 'package:dalel_app/core/functions/custom_snack%20_bar.dart';
import 'package:dalel_app/core/utils/app_strings.dart';
import 'package:dalel_app/core/widgets/custom_button.dart';
import 'package:dalel_app/core/widgets/custom_progress_indicator.dart';
import 'package:dalel_app/core/widgets/custom_text_field.dart';
import 'package:dalel_app/features/auth/presentation/auth_cubit/cubit/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class CustomForgotPasswordForm extends StatelessWidget {
  const CustomForgotPasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is AuthForgotPasswordSuccessState) {
          customSnackBar(context,
              text: 'Check Your Email To Reset Your Password');
          GoRouter.of(context).pop();
        } else if (state is AuthForgotPasswordFailureState) {
          customSnackBar(context, text: state.errMessage, color: Colors.red);
        }
      },
      builder: (context, state) {
        AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);
        return Form(
          key: authCubit.forgotPasswordFormKey,
          child: Column(
            children: [
              CustomTextField(
                labelText: AppStrings.emailAddress,
                onChanged: (value) {
                  authCubit.emailAddress = value;
                },
              ),
              const SizedBox(
                height: 126,
              ),
              state is AuthForgotPasswordLoadingState
                  ? const CustomProgressIndicator()
                  : CustomButton(
                      text: AppStrings.sendVerifyCode,
                      onPressed: () {
                        if (authCubit.forgotPasswordFormKey.currentState!
                            .validate()) {
                          authCubit.resetPasswordWithLink();
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
