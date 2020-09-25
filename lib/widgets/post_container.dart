import 'package:flutter/material.dart';
import 'package:sns/models/models.dart';
import 'package:sns/widgets/profile_avatar.dart';

class PostContainer extends StatelessWidget {
  final Post post;

  const PostContainer({Key key, @required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5.0),
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      // height: 100.0, // height 를 제거해 주면 SliverChildBuilderDelegate 가 동적을 ui 높이를 조절 해 준다.
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _PostHeader(post: post),
        ],
      ),
    );
  }
}

class _PostHeader extends StatelessWidget {
  final Post post;

  const _PostHeader({Key key, this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ProfileAvatar(imageUrl: post.user.imageUrl),
        const SizedBox(width: 8.0),
        Column(
          children: [
            Text(post.user.name),
            Row(
              children: [
                Text(
                  '${post.timeAgo} - ',
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 12.0,
                  ),
                ),
                Icon(
                    Icons.public,
                    color: Colors.grey[600],
                    size: 12.00
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
