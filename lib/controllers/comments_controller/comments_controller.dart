import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:posts_flutter/controllers/comments_controller/comments_state.dart';
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
      state = state.copyWith(
        comments: await _commentRepository.getComments(_postID),
        isLoading: false,
      );
    }();
  }
}
