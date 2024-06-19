import 'package:dalel_app/core/utils/app_styles.dart';
import 'package:dalel_app/features/onBoarding/data/models/pageview_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'on_boarding_dots_indicator.dart';

class OnBoardingPageviewItem extends StatelessWidget {
  const OnBoardingPageviewItem(
      {super.key, required this.currnetPageIndex, required this.pageviewModel});
  final int currnetPageIndex;
  final PageviewModel pageviewModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 3 / 3,
          child: SvgPicture.asset(pageviewModel.img),
        ),
        const SizedBox(
          height: 24,
        ),
        OnBoardingDotsIndicator(currnetPageIndex: currnetPageIndex),
        const SizedBox(
          height: 32,
        ),
        Text(
          pageviewModel.title,
          style: AppStyles.sylesPoppinsMeduim24,
          textAlign: TextAlign.center,
          maxLines: 2,
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          pageviewModel.subTitle,
          style: AppStyles.sylesPoppinsLight18,
          textAlign: TextAlign.center,
          maxLines: 2,
        ),
      ],
    );
  }
}
