import 'package:posts_flutter/data/models/posts.dart';
import 'package:posts_flutter/data/remote/post_data_source.dart';

class PostRepository {
  final PostDataSource _postDataSource;
  PostRepository({required PostDataSource postDataSource})
      : _postDataSource = postDataSource;

  Future<Posts> getPosts() async {
    return _postDataSource.getPosts();
  }
}
