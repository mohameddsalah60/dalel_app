import 'package:dalel_app/core/utils/app_strings.dart';
import 'package:dalel_app/core/widgets/custom_header_text.dart';
import 'package:dalel_app/core/widgets/custom_category_header_item.dart';
import 'package:flutter/material.dart';

class HistoricalPeriodsSection extends StatelessWidget {
  const HistoricalPeriodsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomHeaderText(
          text: AppStrings.historicalPeriods,
        ),
        SizedBox(
          height: 16,
        ),
        Row(
          children: [
            Expanded(
                child: CustomCategoryHeaderitem(
              text: 'Ancient Egypt',
              img: 'https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg',
            )),
            Expanded(
                child: CustomCategoryHeaderitem(
              text: 'Islamic Era',
              img: 'https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg',
            )),
          ],
        ),
      ],
    );
  }
}
