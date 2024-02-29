import 'package:flutter/material.dart';

import 'package:resposive_dash_board/utils/app_styles.dart';

import 'range_options.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        children: [
          Text(
            'All Expenses',
            style: AppStyles.styleSemiBold20(context),
          ),
          const Spacer(),
          const RangeOptions()
        ],
      ),
    ]);
  }
}
