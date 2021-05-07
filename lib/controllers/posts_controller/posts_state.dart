import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:posts_flutter/data/models/post.dart';
import 'package:posts_flutter/data/models/posts.dart';

part "posts_state.freezed.dart";

@freezed
class PostsState with _$PostsState {
  factory PostsState({
    @Default(Posts(items: [])) Posts posts,
    @Default(true) bool isLoading,
  }) = _PostsState;

  PostsState._();

  late final Map<int, Post> _map =
      Map.fromEntries(posts.items.map((p) => MapEntry(p.id, p)));

  Post post(int id) => _map[id]!;
}
