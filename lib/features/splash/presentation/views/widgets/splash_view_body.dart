import 'package:dalel_app/constants.dart';
import 'package:dalel_app/core/database/cache/cache_helper.dart';
import 'package:dalel_app/core/services/service_locator.dart';
import 'package:dalel_app/core/utils/app_router.dart';
import 'package:dalel_app/core/utils/app_strings.dart';
import 'package:dalel_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    isVisisted();

    super.initState();
  }

  void isVisisted() {
    bool isOnBoardingVisisted =
        getIt<CacheHelper>().getDataBool(key: kIsOnBoardingVisited) ?? false;
    bool isLogin =
        getIt<CacheHelper>().getDataBool(key: kIsSuccessLogin) ?? false;
    if (isOnBoardingVisisted == true) {
      if (isLogin == false) {
        delayedGoRouter(path: AppRouter.kSignUp);
      } else {
        delayedGoRouter(path: AppRouter.kSignIn);
      }
    } else {
      delayedGoRouter(path: AppRouter.kOnBoarding);
    }
  }

  void delayedGoRouter({required String path}) {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        GoRouter.of(context).pushReplacement(path);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        AppStrings.appName,
        style: AppStyles.sylesPacificoRegular20.copyWith(
          fontSize: 64,
        ),
      ),
    );
  }
}
