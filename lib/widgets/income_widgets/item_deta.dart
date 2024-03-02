// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:resposive_dash_board/models/income_item_data_model.dart';
import 'package:resposive_dash_board/utils/app_styles.dart';

class IncomeItemData extends StatelessWidget {
  const IncomeItemData({
    Key? key,
    required this.incomeItemDataModel,
  }) : super(key: key);
  final IncomeItemDataModel incomeItemDataModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 12,
        width: 12,
        decoration: ShapeDecoration(
          color: incomeItemDataModel.color,
          shape: const OvalBorder(),
        ),
      ),
      title: Text(
        incomeItemDataModel.title,
        style: AppStyles.styleRegular16(context),
      ),
      trailing: Text(
        incomeItemDataModel.value,
        style: AppStyles.styleMedium16(context),
      ),
    );
  }
}
