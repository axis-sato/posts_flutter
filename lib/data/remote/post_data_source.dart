import 'package:dio/dio.dart';
import 'package:posts_flutter/data/models/posts.dart';

class PostDataSource {
  final Dio _dio;

  PostDataSource({required Dio dio}) : _dio = dio;

  Future<Posts> getPosts() async {
    final response = await _dio.get<List<dynamic>>("/posts?userId=1");
    return Posts.fromJsonWithoutEnvelop(response.data!);
  }
}
