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
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(0);
            },
            child: AllExpensessItem(
              isSelected: selectedIndex == 0,
              allExpensessItemModel: items[0],
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(1);
            },
            child: AllExpensessItem(
              isSelected: selectedIndex == 1,
              allExpensessItemModel: items[1],
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(2);
            },
            child: AllExpensessItem(
              isSelected: selectedIndex == 2,
              allExpensessItemModel: items[2],
            ),
          ),
        )
      ],
    );
  }

  void updateIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
