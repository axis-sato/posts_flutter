import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_comments_exception.freezed.dart';

@freezed
class GetCommentsException with _$GetCommentsException implements Exception {
  const factory GetCommentsException.somethingWrong() = _SomethingWrong;
}
