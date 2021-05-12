import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:posts_flutter/controllers/posts_controller/posts_state.dart';
import 'package:posts_flutter/data/exceptions/get_posts_exception.dart';
import 'package:posts_flutter/data/models/posts.dart';
import 'package:posts_flutter/data/providers/post_repository_provider.dart';
import 'package:posts_flutter/data/repositories/post_repository.dart';

final postsProvider = StateNotifierProvider<PostsController, PostsState>(
    (ref) => PostsController(ref.read(postRepositoryProvider)));

class PostsController extends StateNotifier<PostsState> {
  final PostRepository _postRepository;
  PostsController(this._postRepository) : super(PostsState()) {
    () async {
      fetchPosts();
    }();
  }

  Future<void> fetchPosts() async {
    _loading();
    final postsResult = await _postRepository.getPosts();
    postsResult.when(
      success: (posts) => _setPosts(posts),
      failure: (e) => _setError(e),
    );
  }

  void _loading() {
    state = state.copyWith(
      isLoading: true,
      error: null,
    );
  }

  void _setPosts(Posts posts) {
    state = state.copyWith(
      posts: posts,
      isLoading: false,
      error: null,
    );
  }

  void _setError(GetPostsException e) {
    state = state.copyWith(
      isLoading: false,
      error: e,
    );
  }
}
