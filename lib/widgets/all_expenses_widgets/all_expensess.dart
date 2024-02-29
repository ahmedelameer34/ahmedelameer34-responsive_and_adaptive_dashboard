// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../custom_background_container.dart';
import 'all_expenses_header.dart';
import 'all_expenses_item_list.dart';

class AllExpensess extends StatelessWidget {
  const AllExpensess({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(children: [
      CustomBackgroundContainer(
        child: Column(
          children: [
            AllExpensesHeader(),
            SizedBox(
              height: 16,
            ),
            AllExpensessItemList(),
          ],
        ),
      )
    ]);
  }
}
