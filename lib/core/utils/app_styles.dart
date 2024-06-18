import 'package:dalel_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

abstract class AppStyles {
  static final sylesPacificoRegular20 = TextStyle(
    fontWeight: FontWeight.normal,
    fontSize: 20,
    fontFamily: 'Pacifico',
    color: AppColors.kDeepBrownColor,
  );
  static final sylesPoppinsSemiBold24 = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 24,
    color: AppColors.kBlackColor,
  );
  static final sylesPoppinsMeduim24 = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 24,
    color: AppColors.kGreyColor,
  );
  static final sylesPoppinsRegular12 = TextStyle(
    fontWeight: FontWeight.normal,
    fontSize: 12,
    color: AppColors.kDeepGreyColor,
  );
}
