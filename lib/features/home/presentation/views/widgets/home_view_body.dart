import 'package:flutter/material.dart';

import 'custom_appbar_home_view.dart';
import 'historical_periods_section.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          CustomAppbarHomeView(),
          HistoricalPeriodsSection(),
        ],
      ),
    );
  }
}
