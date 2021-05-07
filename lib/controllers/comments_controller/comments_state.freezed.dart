// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'comments_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CommentsStateTearOff {
  const _$CommentsStateTearOff();

  _CommentsState call(
      {List<Comment> comments = const <Comment>[], bool isLoading = true}) {
    return _CommentsState(
      comments: comments,
      isLoading: isLoading,
    );
  }
}

/// @nodoc
const $CommentsState = _$CommentsStateTearOff();

/// @nodoc
mixin _$CommentsState {
  List<Comment> get comments => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CommentsStateCopyWith<CommentsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentsStateCopyWith<$Res> {
  factory $CommentsStateCopyWith(
          CommentsState value, $Res Function(CommentsState) then) =
      _$CommentsStateCopyWithImpl<$Res>;
  $Res call({List<Comment> comments, bool isLoading});
}

/// @nodoc
class _$CommentsStateCopyWithImpl<$Res>
    implements $CommentsStateCopyWith<$Res> {
  _$CommentsStateCopyWithImpl(this._value, this._then);

  final CommentsState _value;
  // ignore: unused_field
  final $Res Function(CommentsState) _then;

  @override
  $Res call({
    Object? comments = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      comments: comments == freezed
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<Comment>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$CommentsStateCopyWith<$Res>
    implements $CommentsStateCopyWith<$Res> {
  factory _$CommentsStateCopyWith(
          _CommentsState value, $Res Function(_CommentsState) then) =
      __$CommentsStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Comment> comments, bool isLoading});
}

/// @nodoc
class __$CommentsStateCopyWithImpl<$Res>
    extends _$CommentsStateCopyWithImpl<$Res>
    implements _$CommentsStateCopyWith<$Res> {
  __$CommentsStateCopyWithImpl(
      _CommentsState _value, $Res Function(_CommentsState) _then)
      : super(_value, (v) => _then(v as _CommentsState));

  @override
  _CommentsState get _value => super._value as _CommentsState;

  @override
  $Res call({
    Object? comments = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_CommentsState(
      comments: comments == freezed
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<Comment>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_CommentsState with DiagnosticableTreeMixin implements _CommentsState {
  _$_CommentsState({this.comments = const <Comment>[], this.isLoading = true});

  @JsonKey(defaultValue: const <Comment>[])
  @override
  final List<Comment> comments;
  @JsonKey(defaultValue: true)
  @override
  final bool isLoading;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CommentsState(comments: $comments, isLoading: $isLoading)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CommentsState'))
      ..add(DiagnosticsProperty('comments', comments))
      ..add(DiagnosticsProperty('isLoading', isLoading));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CommentsState &&
            (identical(other.comments, comments) ||
                const DeepCollectionEquality()
                    .equals(other.comments, comments)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(comments) ^
      const DeepCollectionEquality().hash(isLoading);

  @JsonKey(ignore: true)
  @override
  _$CommentsStateCopyWith<_CommentsState> get copyWith =>
      __$CommentsStateCopyWithImpl<_CommentsState>(this, _$identity);
}

abstract class _CommentsState implements CommentsState {
  factory _CommentsState({List<Comment> comments, bool isLoading}) =
      _$_CommentsState;

  @override
  List<Comment> get comments => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CommentsStateCopyWith<_CommentsState> get copyWith =>
      throw _privateConstructorUsedError;
}
