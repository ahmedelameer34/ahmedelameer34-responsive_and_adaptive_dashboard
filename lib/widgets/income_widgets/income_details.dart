import 'package:flutter/material.dart';
import 'package:resposive_dash_board/models/income_item_data_model.dart';
import 'package:resposive_dash_board/widgets/income_widgets/item_deta.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});

  static const items = [
    IncomeItemDataModel(
        color: Color(0xFF208BC7), title: 'Design service', value: '%40'),
    IncomeItemDataModel(
        color: Color(0xFF4DB7F2), title: 'Design product', value: '%25'),
    IncomeItemDataModel(
        color: Color(0xFF064060), title: 'Product royalti', value: '%20'),
    IncomeItemDataModel(color: Color(0xFFE2DECD), title: 'Other', value: '%22'),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: items
          .map((e) => Expanded(
                child: IncomeItemData(
                  incomeItemDataModel: e,
                ),
              ))
          .toList(),
    );
  }
}
