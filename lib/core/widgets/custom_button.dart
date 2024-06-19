import 'package:dalel_app/core/utils/app_colors.dart';
import 'package:dalel_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      this.onPressed,
      required this.text,
      this.background,
      this.textColor});
  final void Function()? onPressed;
  final String text;
  final Color? background;
  final Color? textColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: TextButton(
        style: TextButton.styleFrom(
          alignment: Alignment.center,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          backgroundColor: background ?? AppColors.kPrimaryColor,
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: AppStyles.sylesPoppinsMeduim24.copyWith(
            fontSize: 18,
            color: textColor ?? AppColors.kWhiteColor,
          ),
        ),
      ),
    );
  }
}
