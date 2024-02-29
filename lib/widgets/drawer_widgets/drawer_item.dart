// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:resposive_dash_board/models/drawer_item_model.dart';

import '../../utils/app_styles.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    Key? key,
    required this.drawerItemModel,
    required this.isActive,
  }) : super(key: key);
  final DrawerItemModel drawerItemModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveItem(
            drawerItemModel: drawerItemModel,
          )
        : InActiveItem(drawerItemModel: drawerItemModel);
  }
}

class InActiveItem extends StatelessWidget {
  const InActiveItem({
    super.key,
    required this.drawerItemModel,
  });

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemModel.image),
      title: Text(
        drawerItemModel.title,
        style: AppStyles.styleRegular16(context),
      ),
    );
  }
}

class ActiveItem extends StatelessWidget {
  const ActiveItem({
    super.key,
    required this.drawerItemModel,
  });

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemModel.image),
      title: Text(
        drawerItemModel.title,
        style: AppStyles.styleBold16(context),
      ),
      trailing: Container(
        width: 3.47,
        color: const Color(0xff4EB7F2),
      ),
    );
  }
}
