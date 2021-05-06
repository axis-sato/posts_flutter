import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:posts_flutter/controllers/posts_controller/posts_state.dart';
import 'package:posts_flutter/data/providers/post_repository_provider.dart';
import 'package:posts_flutter/data/repositories/post_repository.dart';

final postsProvider = StateNotifierProvider<PostsController, PostsState>(
    (ref) => PostsController(ref.read(postRepositoryProvider)));

class PostsController extends StateNotifier<PostsState> {
  final PostRepository _postRepository;
  PostsController(this._postRepository) : super(PostsState()) {
    () async {
      state = state.copyWith(
        posts: await _postRepository.getPosts(),
        isLoading: false,
      );
    }();
  }
}
