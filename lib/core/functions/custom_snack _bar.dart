import 'package:dalel_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

void customSnackBar(context, {String? text, Color? color}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(text!),
      backgroundColor: color ?? AppColors.kPrimaryColor,
    ),
  );
}
