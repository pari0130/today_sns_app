import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:sns/config/palette.dart';
import 'package:sns/models/models.dart';
import 'package:sns/widgets/custom_tab_bar.dart';
import 'package:sns/widgets/widgets.dart';

import 'circle_button.dart';

class CustomAppBar extends StatelessWidget {
  final User currentUser;
  final List<IconData> icons;
  final int selectedIndex;
  final Function(int) onTap;

  const CustomAppBar(
      {Key key,
      @required this.currentUser,
      @required this.icons,
      @required this.selectedIndex,
      @required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      height: 65.0,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
              color: Colors.black12, offset: Offset(0, 2), blurRadius: 4.0),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              'facebook',
              style: const TextStyle(
                color: Palette.facebookBlue,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
                letterSpacing: -1.2, // 상단 title 문구 간격 조정
              ),
            ),
          ),
          Container(
            height: double.infinity,
            width: 600.0,
            child: CustomTabBar(
              icons: icons,
              selectedIndex: selectedIndex,
              onTap: onTap,
              isBottomIndicator: true,
            ),
          ),
          Expanded(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              UserCart(user: currentUser),
              const SizedBox(width: 12.0),
              CircleButton(
                icon: Icons.search,
                iconSize: 30.0,
                onPressed: () => print('Search'),
              ),
              CircleButton(
                icon: MdiIcons.facebookMessenger,
                iconSize: 30.0,
                onPressed: () => print('Messager'),
              )
            ],
          ))
        ],
      ),
    );
  }
}