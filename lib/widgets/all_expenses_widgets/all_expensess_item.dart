// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../models/all_expenses_item_model.dart';
import 'active_and_inactive_all_expensess_item_header.dart';

class AllExpensessItem extends StatelessWidget {
  const AllExpensessItem({
    Key? key,
    required this.allExpensessItemModel,
    required this.isSelected,
  }) : super(key: key);
  final AllExpensessItemModel allExpensessItemModel;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveAllExpensessItem(allExpensessItemModel: allExpensessItemModel)
        : InActiveAllExpensessItem(
            allExpensessItemModel: allExpensessItemModel);
  }
}
