import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:posts_flutter/controllers/comments_controller/comments_controller.dart';
import 'package:posts_flutter/data/models/comment.dart';
import 'package:posts_flutter/ui/widgets/loading.dart';

class Comments extends StatelessWidget {
// TODO: コメントをAPI経由で取得する
  // final _comments = [
  //   Comment(id: 1, name: "foo", body: "ふー"),
  //   Comment(id: 2, name: "bar", body: "ばー"),
  //   Comment(id: 3, name: "hoge", body: "ほげ"),
  // ];

  final int _postID;

  const Comments({required int postID, Key? key})
      : _postID = postID,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, watch, child) {
        final _commentsState = watch(commentsProvider(_postID));

        if (_commentsState.isLoading) {
          return const Loading();
        }
        final _comments = _commentsState.comments;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text("コメント(${_comments.length})"),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: _comments.length,
              itemBuilder: (BuildContext context, int index) {
                final comment = _comments[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8.0,
                    vertical: 16.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(comment.body),
                      Text(
                        comment.name,
                        style: const TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        );
      },
    );
  }
}
