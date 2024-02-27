// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:resposive_dash_board/utils/app_styles.dart';

class USerInfo extends StatelessWidget {
  const USerInfo({
    Key? key,
    required this.subtitle,
    required this.image,
    required this.title,
  }) : super(key: key);
  final String title, subtitle, image;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: ListTile(
        leading: SvgPicture.asset(image),
        title: Text(
          title,
          style: AppStyles.styleSemiBold16(context),
        ),
        subtitle: Text(
          subtitle,
          style: AppStyles.styleRegular12(context),
        ),
      ),
    );
  }
}
