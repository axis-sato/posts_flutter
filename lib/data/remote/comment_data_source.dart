import 'package:dio/dio.dart';
import 'package:posts_flutter/data/models/comment.dart';

class CommentDataSource {
  final Dio _dio;

  CommentDataSource({required Dio dio}) : _dio = dio;

  Future<List<Comment>> getComments(int postID) async {
    final response = await _dio.get<List<dynamic>>("/comments?postId=$postID");
    return response.data!
        .map((c) => Comment.fromJson(c as Map<String, dynamic>))
        .toList();
  }
}
