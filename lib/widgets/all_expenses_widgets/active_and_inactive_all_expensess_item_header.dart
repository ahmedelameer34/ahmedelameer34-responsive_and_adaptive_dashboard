import 'package:flutter/material.dart';
import 'package:resposive_dash_board/models/all_expenses_item_model.dart';
import 'package:resposive_dash_board/utils/app_styles.dart';
import 'package:resposive_dash_board/widgets/all_expenses_widgets/all_expenses_item_header.dart';

class InActiveAllExpensessItem extends StatelessWidget {
  const InActiveAllExpensessItem({
    super.key,
    required this.allExpensessItemModel,
  });

  final AllExpensessItemModel allExpensessItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(20),
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1, color: Color(0xFFF1F1F1)),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          AllExpensessItemHeader(
            image: allExpensessItemModel.image,
          ),
          const SizedBox(
            height: 34,
          ),
          Text(
            allExpensessItemModel.title,
            style: AppStyles.styleMedium16(context),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            allExpensessItemModel.date,
            style: AppStyles.styleRegular14(context),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            allExpensessItemModel.price,
            style: AppStyles.styleSemiBold24(context),
          )
        ]));
  }
}

class ActiveAllExpensessItem extends StatelessWidget {
  const ActiveAllExpensessItem({
    super.key,
    required this.allExpensessItemModel,
  });

  final AllExpensessItemModel allExpensessItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(20),
        decoration: ShapeDecoration(
          color: const Color(0xff4EB7F2),
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1, color: Color(0xFFF1F1F1)),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          AllExpensessItemHeader(
            imageBackground: Colors.white.withOpacity(0.10000000149011612),
            imageColor: Colors.white,
            image: allExpensessItemModel.image,
          ),
          const SizedBox(
            height: 34,
          ),
          Text(
            allExpensessItemModel.title,
            style: AppStyles.styleMedium16(context).copyWith(
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            allExpensessItemModel.date,
            style: AppStyles.styleRegular14(context).copyWith(
              color: const Color(0xFFFAFAFA),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            allExpensessItemModel.price,
            style: AppStyles.styleSemiBold24(context)
                .copyWith(color: Colors.white),
          )
        ]));
  }
}
