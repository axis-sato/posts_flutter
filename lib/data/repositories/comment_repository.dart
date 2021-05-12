import 'package:posts_flutter/data/exceptions/get_comments_exception.dart';
import 'package:posts_flutter/data/models/comment.dart';
import 'package:posts_flutter/data/remote/comment_data_source.dart';
import 'package:posts_flutter/utils/logger.dart';
import 'package:posts_flutter/utils/result/result.dart';

class CommentRepository {
  final CommentDataSource _commentDataSource;
  CommentRepository({required CommentDataSource commentDataSource})
      : _commentDataSource = commentDataSource;

  Future<Result<List<Comment>, GetCommentsException>> getComments(
      int postID) async {
    try {
      final comments = await _commentDataSource.getComments(postID);
      return Result.success(comments);
    } on Exception catch (e) {
      logger.e(e);
      return const Result.failure(GetCommentsException.somethingWrong());
    }
  }
}
