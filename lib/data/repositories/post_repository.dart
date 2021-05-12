import 'package:posts_flutter/data/exceptions/get_posts_exception.dart';
import 'package:posts_flutter/data/models/posts.dart';
import 'package:posts_flutter/data/remote/post_data_source.dart';
import 'package:posts_flutter/utils/logger.dart';
import 'package:posts_flutter/utils/result/result.dart';

class PostRepository {
  final PostDataSource _postDataSource;
  PostRepository({required PostDataSource postDataSource})
      : _postDataSource = postDataSource;

  Future<Result<Posts, GetPostsException>> getPosts() async {
    try {
      final posts = await _postDataSource.getPosts();
      return Result.success(posts);
    } on Exception catch (e) {
      logger.e(e);
      return const Result.failure(GetPostsException.somethingWrong());
    }
  }
}
