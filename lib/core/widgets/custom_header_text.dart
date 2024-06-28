import 'package:dalel_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomHeaderText extends StatelessWidget {
  const CustomHeaderText({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        text,
        style: AppStyles.sylesPoppinsRegular14.copyWith(
          fontSize: 22,
        ),
      ),
    );
  }
}
