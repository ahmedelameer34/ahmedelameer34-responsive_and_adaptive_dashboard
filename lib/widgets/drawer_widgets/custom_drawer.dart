import 'package:flutter/material.dart';
import 'package:resposive_dash_board/models/drawer_item_model.dart';
import 'package:resposive_dash_board/models/user_info_model.dart';

import 'package:resposive_dash_board/utils/app_images.dart';
import 'package:resposive_dash_board/widgets/drawer_widgets/drawer_item.dart';
import 'package:resposive_dash_board/widgets/drawer_widgets/drawer_list.dart';
import 'package:resposive_dash_board/widgets/user_info.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
  static const UserInfoModel userInfoModel = UserInfoModel(
      title: 'Lekan Okeowo',
      subTitle: 'demo@gmail.com',
      image: Assets.imagesAvatar3);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffFFFFFF),
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(top: 20),
              child: USerInfo(
                userInfoModel: userInfoModel,
              ),
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
