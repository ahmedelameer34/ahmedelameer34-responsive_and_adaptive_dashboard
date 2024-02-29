import 'package:flutter/material.dart';
import 'package:resposive_dash_board/utils/app_styles.dart';
import 'package:resposive_dash_board/widgets/quick_invoice_widgets/latest_transactions.dart';

import '../custom_background_container.dart';
import 'quick_invoice_form.dart';
import 'quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const QuickInvoiceHeader(),
          const SizedBox(
            height: 24,
          ),
          Text(
            'Latest Transaction',
            style: AppStyles.styleMedium16(context),
          ),
          const SizedBox(
            height: 12,
          ),
          const LatestTransactionsList(),
          const Divider(
            height: 48,
            color: Color(0xffF1F1F1),
          ),
          const QuickInvoiceForm()
        ],
      ),
    );
  }
}
