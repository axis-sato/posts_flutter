import 'package:posts_flutter/data/models/comment.dart';
import 'package:posts_flutter/data/remote/comment_data_source.dart';

class CommentRepository {
  final CommentDataSource _commentDataSource;
  CommentRepository({required CommentDataSource commentDataSource})
      : _commentDataSource = commentDataSource;

  Future<List<Comment>> getComments(int postID) async {
    return _commentDataSource.getComments(postID);
  }
}
