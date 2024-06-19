import 'package:dalel_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomDotIndicator extends StatelessWidget {
  const CustomDotIndicator({super.key, required this.isActive});
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width: isActive ? 30 : 8,
      height: 8,
      decoration: ShapeDecoration(
        color: isActive ? AppColors.kDeepBrownColor : AppColors.kGreyColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
