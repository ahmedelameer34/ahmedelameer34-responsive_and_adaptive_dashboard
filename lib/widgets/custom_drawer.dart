import 'package:flutter/material.dart';
import 'package:resposive_dash_board/models/drawer_item_model.dart';

import 'package:resposive_dash_board/utils/app_images.dart';
import 'package:resposive_dash_board/widgets/drawer_item.dart';
import 'package:resposive_dash_board/widgets/drawer_list.dart';
import 'package:resposive_dash_board/widgets/user_info.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffFFFFFF),
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: USerInfo(
              subtitle: 'demo@gmail.com',
              image: Assets.imagesAvatar3,
              title: 'Lekan Okeowo',
            ),
          ),
          DrawerList(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(
                    child: SizedBox(
                  height: 20,
                )),
                InActiveItem(
                    drawerItemModel: DrawerItemModel(
                        title: 'Settings', image: Assets.imagesSettings)),
                InActiveItem(
                    drawerItemModel: DrawerItemModel(
                        title: 'Logout', image: Assets.imagesLogout)),
                SizedBox(
                  height: 48,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
