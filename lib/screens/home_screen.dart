import 'package:flutter/material.dart';
import 'package:sns/config/palette.dart';
import 'package:sns/widgets/circle_button.dart';
import 'package:sns/data/data.dart';
import 'package:sns/models/models.dart';
import 'package:sns/widgets/rooms.dart';
import 'package:sns/widgets/widgets.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(slivers: [
      SliverAppBar(
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        title: Text(
          'TODAY SNS',
          style: const TextStyle(
            color: Palette.facebookBlue,
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
            letterSpacing: -1.2, // 상단 title 문구 간격 조정
          ),
        ),
        centerTitle: false,
        // title 글자 가운데 정렬 여부
        floating: true,
        // 스크롤 시 상단 자동 숨김
        actions: [
          CircleButton(
            icon: Icons.search,
            iconSize: 30.0,
            onPressed: () => print('Search'),
          ),
          CircleButton(
            icon: MdiIcons.facebookMessenger,
            iconSize: 30.0,
            onPressed: () => print('Search'),
          ),
        ],
      ),
      SliverToBoxAdapter( // 상단 텍스트 입력 및 live, photo, room
        child: CreatePostContainer(currentUser: currentUser),
      ),
      SliverPadding(
        padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 5.0),
        sliver: SliverToBoxAdapter(
          child: Rooms(onlineUsers: onlineUsers),
        ),
      ),

    ]));
  }
}
