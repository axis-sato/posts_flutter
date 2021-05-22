import 'dart:async';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:posts_flutter/controllers/posts_controller/posts_controller.dart';
import 'package:posts_flutter/data/exceptions/get_posts_exception.dart';
import 'package:posts_flutter/data/models/posts.dart';
import 'package:posts_flutter/data/repositories/post_repository.dart';
import 'package:posts_flutter/utils/result/result.dart';
import '../../data/dummy/posts.dart';
import 'posts_controller_test.mocks.dart';

final _mockPostRepository = MockPostRepository();

@GenerateMocks([PostRepository])
void main() {
  tearDown(() {
    _resetMock();
  });

  test('PostsController test', () {
    final c1 = _setMockGetPosts(Result.success(posts));
    final postsController = PostsController(_mockPostRepository);
    c1.future.then((_) {
      expect(postsController.debugState.posts, posts);
      expect(postsController.debugState.isLoading, isFalse);
      expect(postsController.debugState.error, isNull);
    });

    _resetMock();

    final c2 = _setMockGetPosts(const Result.success(Posts(items: [])));
    postsController.fetchPosts();
    expect(postsController.debugState.isLoading, isTrue);
    c2.future.then((_) {
      expect(postsController.debugState.posts, const Posts(items: []));
      expect(postsController.debugState.isLoading, isFalse);
      expect(postsController.debugState.error, isNull);
    });

    _resetMock();

    final c3 = _setMockGetPosts(
        const Result.failure(GetPostsException.somethingWrong()));
    postsController.fetchPosts();
    expect(postsController.debugState.isLoading, isTrue);
    c3.future.then((_) {
      expect(postsController.debugState.posts, const Posts(items: []));
      expect(postsController.debugState.isLoading, isFalse);
      expect(postsController.debugState.error,
          const GetPostsException.somethingWrong());
    });
  });
}

Completer<Result<Posts, GetPostsException>> _setMockGetPosts(
    Result<Posts, GetPostsException> resutl) {
  final Completer<Result<Posts, GetPostsException>> c = Completer();
  when(_mockPostRepository.getPosts()).thenAnswer((_) async {
    c.complete(resutl);
    return c.future;
  });

  return c;
}

void _resetMock() {
  reset(_mockPostRepository);
}
