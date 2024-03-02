import 'package:flutter/material.dart';
import 'package:resposive_dash_board/widgets/drawer_widgets/custom_drawer.dart';
import 'package:resposive_dash_board/widgets/income_widgets/income.dart';

import 'package:resposive_dash_board/widgets/my_card_and_transactions_history_widgets/my_card_and_transactions.dart';

import 'all_expenses_widgets/all_expensess_and_quick_invoice.dart';

class DashBoardTabletLayout extends StatelessWidget {
  const DashBoardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        Expanded(
            flex: 3,
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Padding(
                padding: EdgeInsets.only(left: 32, right: 32, top: 40),
                child: Column(
                  children: [
                    AllExpensessAndQuickInvoiceSection(),
                    SizedBox(
                      height: 24,
                    ),
                    MyCardAndTransactionHistory(),
                    SizedBox(
                      height: 24,
                    ),
                    SizedBox(height: 300, child: Income()),
                    SizedBox(
                      height: 24,
                    )
                  ],
                ),
              ),
            )),
      ],
    );
  }
}
