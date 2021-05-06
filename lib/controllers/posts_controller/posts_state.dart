import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:posts_flutter/data/models/posts.dart';

part "posts_state.freezed.dart";

@freezed
class PostsState with _$PostsState {
  factory PostsState({
    // @Default(Posts(items: [])) Posts posts,
    @Default(Posts(items: [])) Posts posts,
    @Default(true) bool isLoading,
  }) = _PostsState;

  PostsState._();
}
