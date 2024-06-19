import 'package:dalel_app/core/utils/app_assets.dart';
import 'package:dalel_app/features/onBoarding/data/models/pageview_model.dart';
import 'package:flutter/material.dart';

import 'on_boarding_pageview_item.dart';

class OnBoardingPageview extends StatelessWidget {
  const OnBoardingPageview(
      {super.key, required this.controller, this.onPageChanged});
  final PageController controller;
  final void Function(int)? onPageChanged;
  static final List<PageviewModel> _list = [
    const PageviewModel(
      img: Assets.imagesFrame1,
      title: 'Explore The history with Dalel in a smart way',
      subTitle:
          'Using our app’s history libraries you can find many historical periods ',
    ),
    const PageviewModel(
      img: Assets.imagesFrame2,
      title: 'From every placeon earth',
      subTitle: 'A big variety of ancient places from all over the world',
    ),
    const PageviewModel(
      img: Assets.imagesFrame3,
      title: 'Using modern AI technology for better user experience',
      subTitle:
          'AI provide recommendations and helps you to continue the search journey',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * .75,
      child: PageView.builder(
        onPageChanged: onPageChanged,
        controller: controller,
        physics: const BouncingScrollPhysics(),
        itemCount: _list.length,
        itemBuilder: (BuildContext context, int index) {
          return OnBoardingPageviewItem(
            currnetPageIndex: index,
            pageviewModel: _list[index],
          );
        },
      ),
    );
  }
}
