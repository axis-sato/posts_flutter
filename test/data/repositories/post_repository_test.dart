import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:posts_flutter/data/exceptions/get_posts_exception.dart';
import 'package:posts_flutter/data/remote/post_data_source.dart';
import 'package:posts_flutter/data/repositories/post_repository.dart';
import 'package:posts_flutter/utils/result/result.dart';
import '../dummy/posts.dart';
import 'post_repository_test.mocks.dart';

@GenerateMocks([PostDataSource])
void main() {
  final postDataSource = MockPostDataSource();

  tearDown(() {
    reset(postDataSource);
  });

  test('Posts取得が成功した場合、Result.successが返ってくること', () async {
    when(postDataSource.getPosts()).thenAnswer((_) async => posts);
    final postRepository = PostRepository(postDataSource: postDataSource);
    final result = await postRepository.getPosts();
    expect(result, Result.success(posts));
  });

  test('Posts取得が失敗した場合、Result.failureが返ってくること', () async {
    final dioError = Exception('foo');
    when(postDataSource.getPosts()).thenThrow(dioError);
    final postRepository = PostRepository(postDataSource: postDataSource);
    final result = await postRepository.getPosts();
    expect(result, const Result.failure(GetPostsException.somethingWrong()));
  });
}
