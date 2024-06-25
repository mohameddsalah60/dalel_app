import 'package:dalel_app/core/utils/app_assets.dart';
import 'package:dalel_app/core/utils/app_colors.dart';
import 'package:dalel_app/core/utils/app_strings.dart';
import 'package:dalel_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WelcomeBannerSignIn extends StatelessWidget {
  const WelcomeBannerSignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * .4,
      decoration: BoxDecoration(
        color: AppColors.kPrimaryColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Align(
            child: Text(
              AppStrings.appName,
              style: AppStyles.sylesPoppinsSemiBold24.copyWith(
                color: Colors.white,
                fontSize: 32,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SvgPicture.asset(
                Assets.imagesVector2,
                width: MediaQuery.sizeOf(context).width * .35,
              ),
              SvgPicture.asset(
                Assets.imagesVector3,
                width: MediaQuery.sizeOf(context).width * .35,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
