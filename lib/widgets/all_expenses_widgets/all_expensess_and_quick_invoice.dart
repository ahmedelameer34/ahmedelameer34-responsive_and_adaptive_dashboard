import 'package:flutter/material.dart';
import 'package:resposive_dash_board/widgets/all_expenses_widgets/all_expensess.dart';

import '../quick_invoice_widgets/quick_invoice.dart';

class AllExpensessAndQuickInvoiceSection extends StatelessWidget {
  const AllExpensessAndQuickInvoiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AllExpensess(),
        SizedBox(
          height: 24,
        ),
        QuickInvoice()
      ],
    );
  }
}
