import 'package:flutter/material.dart';
import 'package:resposive_dash_board/utils/app_styles.dart';
import 'package:resposive_dash_board/widgets/custom_background_container.dart';
import 'package:resposive_dash_board/widgets/income_widgets/income_chart.dart';

import '../all_expenses_widgets/range_options.dart';
import 'income_details.dart';

class Income extends StatelessWidget {
  const Income({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Income',
                style: AppStyles.styleSemiBold20(context),
              ),
              const RangeOptions()
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          const Expanded(
            child: Row(
              children: [
                Expanded(child: IncomeChart()),
                Expanded(flex: 2, child: IncomeDetails()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
