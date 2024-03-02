import 'package:flutter/material.dart';
import 'package:resposive_dash_board/utils/app_styles.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Transaction History',
          style: AppStyles.styleSemiBold20(context),
        ),
        TextButton(
          onPressed: () {},
          child: Text('See all',
              style: AppStyles.styleMedium16(context)
                  .copyWith(color: const Color(0xff4EB7F2))),
        ),
      ],
    );
  }
}
