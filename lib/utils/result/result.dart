import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'result.freezed.dart';

@freezed
class Result<T, U> with _$Result<T, U> {
  const factory Result.success(T value) = Success<T, U>;
  const factory Result.failure(U e) = Failure<T, U>;
}
