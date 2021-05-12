import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:posts_flutter/controllers/comments_controller/comments_state.dart';
import 'package:posts_flutter/data/exceptions/get_comments_exception.dart';
import 'package:posts_flutter/data/models/comment.dart';
import 'package:posts_flutter/data/providers/comment_repository_provider.dart';
import 'package:posts_flutter/data/repositories/comment_repository.dart';

final commentsProvider = StateNotifierProvider.autoDispose
    .family<CommentsController, CommentsState, int>((ref, postID) =>
        CommentsController(ref.read(commentRepositoryProvider), postID));

class CommentsController extends StateNotifier<CommentsState> {
  final CommentRepository _commentRepository;
  final int _postID;
  CommentsController(this._commentRepository, this._postID)
      : super(CommentsState()) {
    () async {
      fetchComments();
    }();
  }

  Future<void> fetchComments() async {
    _loading();
    final commetsResult = await _commentRepository.getComments(_postID);
    commetsResult.when(
      success: (posts) => _setComments(posts),
      failure: (e) => _setError(e),
    );
  }

  void _loading() {
    state = state.copyWith(
      isLoading: true,
      error: null,
    );
  }

  void _setComments(List<Comment> comments) {
    state = state.copyWith(
      comments: comments,
      isLoading: false,
      error: null,
    );
  }

  void _setError(GetCommentsException e) {
    state = state.copyWith(
      isLoading: false,
      error: e,
    );
  }
}
