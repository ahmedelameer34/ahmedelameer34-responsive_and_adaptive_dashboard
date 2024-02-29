import 'package:flutter/material.dart';
import 'package:resposive_dash_board/models/all_expenses_item_model.dart';
import 'package:resposive_dash_board/widgets/all_expenses_widgets/all_expensess_item.dart';

import '../../utils/app_images.dart';

class AllExpensessItemList extends StatefulWidget {
  const AllExpensessItemList({super.key});

  @override
  State<AllExpensessItemList> createState() => _AllExpensessItemListState();
}

class _AllExpensessItemListState extends State<AllExpensessItemList> {
  final items = [
    const AllExpensessItemModel(
        image: Assets.imagesBalance,
        title: 'Balance',
        date: 'April 2022',
        price: r'$20,129'),
    const AllExpensessItemModel(
        image: Assets.imagesIncome,
        title: 'Income',
        date: 'April 2022',
        price: r'$20,129'),
    const AllExpensessItemModel(
        image: Assets.imagesExpenses,
        title: 'Expenses',
        date: 'April 2022',
        price: r'$20,129'),
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      // children: items.map((e) => AllExpensessItem(itemModel: e)).toList(),
      children: items.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;
        return Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(index);
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: index == 1 ? 12 : 0),
              child: AllExpensessItem(
                isSelected: selectedIndex == index,
                allExpensessItemModel: item,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }

  void updateIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
