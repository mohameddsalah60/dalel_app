import 'package:dalel_app/core/utils/app_strings.dart';
import 'package:dalel_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomAppbarHomeView extends StatelessWidget {
  const CustomAppbarHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu,
                size: 32,
              )),
          Text(
            AppStrings.appName,
            style: AppStyles.sylesPacificoRegular20.copyWith(
              fontSize: 24,
            ),
          )
        ],
      ),
    );
  }
}
