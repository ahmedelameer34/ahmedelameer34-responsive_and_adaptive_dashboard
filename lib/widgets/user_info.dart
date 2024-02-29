// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:resposive_dash_board/models/user_info_model.dart';

import 'package:resposive_dash_board/utils/app_styles.dart';

class USerInfo extends StatelessWidget {
  const USerInfo({Key? key, required this.userInfoModel}) : super(key: key);
  final UserInfoModel userInfoModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: Center(
        child: ListTile(
          leading: SvgPicture.asset(userInfoModel.image),
          title: Text(
            userInfoModel.title,
            style: AppStyles.styleSemiBold16(context),
          ),
          subtitle: Text(
            userInfoModel.subTitle,
            style: AppStyles.styleRegular12(context),
          ),
        ),
      ),
    );
  }
}
