import 'package:flutter/material.dart';
import 'package:sns/models/models.dart';

class Stories extends StatelessWidget {
  final User currentUser;
  final List<Story> stories;

  const Stories({Key key, this.currentUser, this.stories}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      color: Colors.purple,
      child: ListView.builder(
        itemCount: 1 + stories.length,
        itemBuilder: (BuildContext context, int index) {
          return;
        },
      ),
    );
  }
}
