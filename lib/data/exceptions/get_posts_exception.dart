import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_posts_exception.freezed.dart';

@freezed
class GetPostsException with _$GetPostsException implements Exception {
  const factory GetPostsException.somethingWrong() = _SomethingWrong;
}
