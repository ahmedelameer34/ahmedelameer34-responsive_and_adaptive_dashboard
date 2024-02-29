// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:resposive_dash_board/models/drawer_item_model.dart';
import 'package:resposive_dash_board/utils/app_images.dart';

import 'package:resposive_dash_board/widgets/drawer_widgets/drawer_item.dart';

class DrawerList extends StatefulWidget {
  const DrawerList({
    Key? key,
  }) : super(key: key);

  @override
  State<DrawerList> createState() => _DrawerListState();
}

class _DrawerListState extends State<DrawerList> {
  int activeIndex = 0;
  final List<DrawerItemModel> items = [
    const DrawerItemModel(title: 'Dashboard', image: Assets.imagesDashboard),
    const DrawerItemModel(
        title: 'My Transaction', image: Assets.imagesMyTransctions),
    const DrawerItemModel(title: 'Statistics', image: Assets.imagesStatistics),
    const DrawerItemModel(
        title: 'Wallet Account', image: Assets.imagesWalletAccount),
    const DrawerItemModel(
        title: 'My Investments', image: Assets.imagesMyInvestments),
  ];
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: items.length,
      itemBuilder: (context, index) => GestureDetector(
        onTap: () {
          if (activeIndex != index) {
            setState(() {
              activeIndex = index;
            });
          }
        },
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: DrawerItem(
            drawerItemModel: items[index],
            isActive: activeIndex == index,
          ),
        ),
      ),
    );
  }
}
