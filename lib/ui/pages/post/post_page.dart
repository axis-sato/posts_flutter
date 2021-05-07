import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:posts_flutter/controllers/post_detail_controller/post_detail_controller.dart';
import 'package:posts_flutter/data/models/comment.dart';

class PostPage extends StatelessWidget {
  final int _postID;

// TODO: コメントをAPI経由で取得する
  final _comments = [
    Comment(id: 1, name: "foo", body: "ふー"),
    Comment(id: 2, name: "bar", body: "ばー"),
    Comment(id: 3, name: "hoge", body: "ほげ"),
  ];

  PostPage({Key? key, required int postID})
      : _postID = postID,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final postDetailController =
        context.read(postDetailProvider(_postID).notifier);
    final _post = postDetailController.item;

    return Scaffold(
      appBar: AppBar(
        title: Text("Post ${_post.id}"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                _post.title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Text(_post.body),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Divider(),
              ),
              Column(
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
