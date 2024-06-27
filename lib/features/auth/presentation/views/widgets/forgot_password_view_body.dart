import 'package:dalel_app/core/utils/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'custom_forgot_password_form.dart';
import 'forgot_password_view_subtitle.dart';
import 'forgot_password_view_title.dart';

class ForgotPasswordViewBody extends StatelessWidget {
  const ForgotPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                const SizedBox(
                  height: 64,
                ),
                const ForgotPasswordTitle(),
                const SizedBox(
                  height: 40,
                ),
                AspectRatio(
                  aspectRatio: 4 / 3,
                  child: SvgPicture.asset(Assets.imagesForgotPassword),
                ),
                const SizedBox(
                  height: 40,
                ),
                const ForgotPasswordsubTitle(),
                const SizedBox(
                  height: 40,
                ),
                const CustomForgotPasswordForm(),
                const SizedBox(
                  height: 16,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
