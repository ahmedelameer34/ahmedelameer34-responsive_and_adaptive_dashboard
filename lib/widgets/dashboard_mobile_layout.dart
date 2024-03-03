import 'package:flutter/material.dart';
import 'package:resposive_dash_board/widgets/all_expenses_widgets/all_expensess_and_quick_invoice.dart';

import 'income_widgets/income.dart';
import 'my_card_and_transactions_history_widgets/my_card_and_transactions.dart';

class DashBoardMobileLayout extends StatelessWidget {
  const DashBoardMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
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
                Expanded(child: Income()),
                SizedBox(
                  height: 24,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
