import 'package:flutter/material.dart';
import 'package:resposive_dash_board/models/user_info_model.dart';
import 'package:resposive_dash_board/utils/app_images.dart';
import 'package:resposive_dash_board/widgets/user_info.dart';

class LatestTransactionsList extends StatelessWidget {
  const LatestTransactionsList({super.key});
  static const List<UserInfoModel> items = [
    UserInfoModel(
        title: 'Madrani Andi',
        subTitle: 'Madraniadi20@gmail',
        image: Assets.imagesAvatar1),
    UserInfoModel(
        title: 'Josua Nunito',
        subTitle: 'Madraniadi20@gmail',
        image: Assets.imagesAvatar2),
    UserInfoModel(
        title: 'Madrani Andi',
        subTitle: 'Josh Nunito@gmail.com',
        image: Assets.imagesAvatar3),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items
            .map((e) => IntrinsicWidth(
                  child: USerInfo(userInfoModel: e),
                ))
            .toList(),
      ),
    );
  }
}
