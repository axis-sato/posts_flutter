import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:posts_flutter/data/models/posts.dart';
import 'package:posts_flutter/data/providers/post_repository_provider.dart';
import 'package:posts_flutter/ui/pages/post_page.dart';
import 'package:posts_flutter/ui/pages/posts/create_post_dialog.dart';
import 'package:posts_flutter/ui/pages/widgets/loading.dart';
import 'package:posts_flutter/utils/logger.dart';

class PostsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Post一覧"),
      ),
      body: Consumer(
        builder: (context, watch, child) {
          final postRepository = context.read(postRepositoryProvider);
          return FutureBuilder<Posts>(
            future: postRepository.getPosts(),
            builder: (context, snapshot) {
              if (snapshot.connectionState != ConnectionState.done) {
                return const Loading();
              }
              final _posts = snapshot.data?.posts ?? [];
              return ListView.separated(
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
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final newPost = await showDialog<NewPost?>(
            context: context,
            builder: (context) {
              return CreatePostDialog();
            },
          );

          if (newPost != null) _createNewPost(newPost);
        },
        tooltip: '追加',
        child: const Icon(Icons.add),
      ),
    );
  }

  void _createNewPost(NewPost newPost) {
    logger.d("Post作成 $newPost");
  }
}
