import 'package:flutter/material.dart';
import 'package:sns/models/models.dart';

class Rooms extends StatelessWidget {
  final List<User> onlineUsers;

  const Rooms({Key key, this.onlineUsers}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      color: Colors.orange,
      child: ListView.builder( // 자동 리스트 목록을 만들어 주는 위젯
        scrollDirection: Axis.horizontal, // 가로로 자동 리스트
        itemCount: 1 + onlineUsers.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 20.0,
            width: 20.0,
            color: Colors.red,
          );
        },
      ),
    );
  }
}
