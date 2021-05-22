import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:posts_flutter/data/models/post.dart';
import 'package:posts_flutter/data/models/posts.dart';
import 'package:posts_flutter/data/remote/app_dio.dart';
import 'package:posts_flutter/data/remote/post_data_source.dart';

final dio = AppDio.getInstance();

void main() {
  const path = '/posts?userId=1';

  test('Postsを返すこと', () async {
    final dioAdapter = _setupDioAdapter();
    final response = [
      {'userId': 1, 'id': 1, 'title': 'foo', 'body': 'bar'},
      {'userId': 2, 'id': 2, 'title': 'hoge', 'body': 'fuga'},
    ];
    dioAdapter.onGet(
      path,
      (request) => request.reply(200, response),
    );

    final postDataSource = PostDataSource(dio: dio);
    final posts = await postDataSource.getPosts();

    expect(posts, isA<Posts>());
    expect(posts.items.length, 2);
    expect(
      posts,
      Posts(
        items: [
          Post(id: 1, title: 'foo', body: 'bar'),
          Post(id: 2, title: 'hoge', body: 'fuga'),
        ],
      ),
    );
  });
  test('APIがHTTPステータスコード200以外を返す場合、例外を投げること', () async {
    final dioAdapter = _setupDioAdapter();
    dioAdapter.onGet(
      path,
      (request) => request.reply(500, {}),
    );

    final postDataSource = PostDataSource(dio: dio);

    expect(() => postDataSource.getPosts(), throwsA(isA<DioError>()));
  });
}

DioAdapter _setupDioAdapter() {
  final dioAdapter = DioAdapter();
  dio.httpClientAdapter = dioAdapter;
  return dioAdapter;
}
