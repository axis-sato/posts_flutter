import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:posts_flutter/controllers/post_detail_controller/post_detail_state.dart';
import 'package:posts_flutter/controllers/posts_controller/posts_controller.dart';
import 'package:posts_flutter/data/models/post.dart';
import 'package:posts_flutter/utils/logger.dart';

final postDetailProvider = StateNotifierProvider.autoDispose
    .family<PostDetailController, PostDetailState, int>(
        (ref, id) => PostDetailController(
              ref.read,
              id: id,
            ));

class PostDetailController extends StateNotifier<PostDetailState> {
  final int id;
  final Reader _read;

  PostDetailController(this._read, {required this.id})
      : super(PostDetailState());

  Post get item => _read(postsProvider).post(id);

  @override
  void dispose() {
    logger.d("called dispose id = ${item.id}");
    super.dispose();
  }
}
