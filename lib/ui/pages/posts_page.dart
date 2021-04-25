import 'package:flutter/material.dart';
import 'package:posts_flutter/data/models/post.dart';
import 'package:posts_flutter/ui/pages/post_page.dart';

class PostsPage extends StatelessWidget {
  final _posts = [
    Post(id: 1, title: "foo", body: "ふー"),
    Post(id: 2, title: "bar", body: "ばー"),
    Post(id: 3, title: "hoge", body: "ほげ"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Post一覧"),
      ),
      body: ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          final post = _posts[index];
          return ListTile(
            title: Text(post.title),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PostPage(post: post),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) => const Divider(
          height: 0.0,
        ),
        itemCount: _posts.length,
      ),
    );
  }
}
