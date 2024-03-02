import 'package:flutter/material.dart';
import 'package:resposive_dash_board/widgets/all_expenses_widgets/all_expensess_and_quick_invoice.dart';
import 'package:resposive_dash_board/widgets/drawer_widgets/custom_drawer.dart';
import 'package:resposive_dash_board/widgets/income_widgets/income.dart';

import 'my_card_and_transactions_history_widgets/my_card_and_transactions.dart';

class DashBoardDesktopLayout extends StatelessWidget {
  const DashBoardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.only(top: 40),
              child: CustomDrawer(),
            )),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 6,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                  children: [
                    Expanded(
                        flex: 4,
                        child: Padding(
                          padding: EdgeInsets.only(top: 40),
                          child: AllExpensessAndQuickInvoiceSection(),
                        )),
                    SizedBox(
                      width: 24,
                    ),
                    Expanded(
                        flex: 3,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 40,
                            ),
                            MyCardAndTransactionHistory(),
                            SizedBox(
                              height: 24,
                            ),
                            Expanded(child: Income()),
                            SizedBox(
                              height: 24,
                            ),
                          ],
                        ))
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 24,
        ),
      ],
    );
  }
}
