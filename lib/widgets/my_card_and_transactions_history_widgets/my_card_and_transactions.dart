import 'package:flutter/material.dart';
import 'package:resposive_dash_board/widgets/custom_background_container.dart';
import 'package:resposive_dash_board/widgets/my_card_and_transactions_history_widgets/my_cards_section.dart';
import 'package:resposive_dash_board/widgets/my_card_and_transactions_history_widgets/transaction_history.dart';
import 'package:resposive_dash_board/widgets/my_card_and_transactions_history_widgets/transactions_list.dart';

class MyCardAndTransactionHistory extends StatelessWidget {
  const MyCardAndTransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          MyCardsSection(),
          Divider(
            height: 40,
            color: Color(0xffF1F1F1),
          ),
          TransactionHistory(),
          SizedBox(
            height: 30,
          ),
          TransctionHistoryListView()
        ],
      ),
    );
  }
}
