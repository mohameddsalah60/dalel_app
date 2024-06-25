import 'package:dalel_app/core/utils/app_colors.dart';
import 'package:dalel_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class HaveAnAccountWidget extends StatelessWidget {
  const HaveAnAccountWidget({
    super.key,
    required this.text1,
    required this.text2,
    this.onTap,
  });
  final String text1, text2;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text1,
          style: AppStyles.sylesPoppinsRegular14,
        ),
        GestureDetector(
          onTap: onTap,
          child: Text(
            text2,
            style: AppStyles.sylesPoppinsRegular14.copyWith(
              color: AppColors.kDeepGreyColor3,
            ),
          ),
        ),
      ],
    );
  }
}
