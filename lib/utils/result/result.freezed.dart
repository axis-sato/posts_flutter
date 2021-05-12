// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ResultTearOff {
  const _$ResultTearOff();

  Success<T, U> success<T, U>(T value) {
    return Success<T, U>(
      value,
    );
  }

  Failure<T, U> failure<T, U>(U e) {
    return Failure<T, U>(
      e,
    );
  }
}

/// @nodoc
const $Result = _$ResultTearOff();

/// @nodoc
mixin _$Result<T, U> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T value) success,
    required TResult Function(U e) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T value)? success,
    TResult Function(U e)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Success<T, U> value) success,
    required TResult Function(Failure<T, U> value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Success<T, U> value)? success,
    TResult Function(Failure<T, U> value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<T, U, $Res> {
  factory $ResultCopyWith(
          Result<T, U> value, $Res Function(Result<T, U>) then) =
      _$ResultCopyWithImpl<T, U, $Res>;
}

/// @nodoc
class _$ResultCopyWithImpl<T, U, $Res> implements $ResultCopyWith<T, U, $Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  final Result<T, U> _value;
  // ignore: unused_field
  final $Res Function(Result<T, U>) _then;
}

/// @nodoc
abstract class $SuccessCopyWith<T, U, $Res> {
  factory $SuccessCopyWith(
          Success<T, U> value, $Res Function(Success<T, U>) then) =
      _$SuccessCopyWithImpl<T, U, $Res>;
  $Res call({T value});
}

/// @nodoc
class _$SuccessCopyWithImpl<T, U, $Res> extends _$ResultCopyWithImpl<T, U, $Res>
    implements $SuccessCopyWith<T, U, $Res> {
  _$SuccessCopyWithImpl(
      Success<T, U> _value, $Res Function(Success<T, U>) _then)
      : super(_value, (v) => _then(v as Success<T, U>));

  @override
  Success<T, U> get _value => super._value as Success<T, U>;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(Success<T, U>(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$Success<T, U> with DiagnosticableTreeMixin implements Success<T, U> {
  const _$Success(this.value);

  @override
  final T value;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Result<$T, $U>.success(value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Result<$T, $U>.success'))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Success<T, U> &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  $SuccessCopyWith<T, U, Success<T, U>> get copyWith =>
      _$SuccessCopyWithImpl<T, U, Success<T, U>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T value) success,
    required TResult Function(U e) failure,
  }) {
    return success(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T value)? success,
    TResult Function(U e)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Success<T, U> value) success,
    required TResult Function(Failure<T, U> value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Success<T, U> value)? success,
    TResult Function(Failure<T, U> value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success<T, U> implements Result<T, U> {
  const factory Success(T value) = _$Success<T, U>;

  T get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SuccessCopyWith<T, U, Success<T, U>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<T, U, $Res> {
  factory $FailureCopyWith(
          Failure<T, U> value, $Res Function(Failure<T, U>) then) =
      _$FailureCopyWithImpl<T, U, $Res>;
  $Res call({U e});
}

/// @nodoc
class _$FailureCopyWithImpl<T, U, $Res> extends _$ResultCopyWithImpl<T, U, $Res>
    implements $FailureCopyWith<T, U, $Res> {
  _$FailureCopyWithImpl(
      Failure<T, U> _value, $Res Function(Failure<T, U>) _then)
      : super(_value, (v) => _then(v as Failure<T, U>));

  @override
  Failure<T, U> get _value => super._value as Failure<T, U>;

  @override
  $Res call({
    Object? e = freezed,
  }) {
    return _then(Failure<T, U>(
      e == freezed
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as U,
    ));
  }
}

/// @nodoc

class _$Failure<T, U> with DiagnosticableTreeMixin implements Failure<T, U> {
  const _$Failure(this.e);

  @override
  final U e;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Result<$T, $U>.failure(e: $e)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Result<$T, $U>.failure'))
      ..add(DiagnosticsProperty('e', e));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Failure<T, U> &&
            (identical(other.e, e) ||
                const DeepCollectionEquality().equals(other.e, e)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(e);

  @JsonKey(ignore: true)
  @override
  $FailureCopyWith<T, U, Failure<T, U>> get copyWith =>
      _$FailureCopyWithImpl<T, U, Failure<T, U>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T value) success,
    required TResult Function(U e) failure,
  }) {
    return failure(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T value)? success,
    TResult Function(U e)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(e);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Success<T, U> value) success,
    required TResult Function(Failure<T, U> value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Success<T, U> value)? success,
    TResult Function(Failure<T, U> value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class Failure<T, U> implements Result<T, U> {
  const factory Failure(U e) = _$Failure<T, U>;

  U get e => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FailureCopyWith<T, U, Failure<T, U>> get copyWith =>
      throw _privateConstructorUsedError;
}
