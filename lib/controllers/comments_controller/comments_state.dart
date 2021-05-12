import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:posts_flutter/data/exceptions/get_comments_exception.dart';
import 'package:posts_flutter/data/models/comment.dart';

part "comments_state.freezed.dart";

@freezed
class CommentsState with _$CommentsState {
  factory CommentsState({
    @Default(<Comment>[]) List<Comment> comments,
    @Default(true) bool isLoading,
    @Default(null) GetCommentsException? error,
  }) = _CommentsState;
}
