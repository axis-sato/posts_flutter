// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'posts_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PostsStateTearOff {
  const _$PostsStateTearOff();

  _PostsState call(
      {Posts posts = const Posts(items: []),
      bool isLoading = true,
      GetPostsException? error = null}) {
    return _PostsState(
      posts: posts,
      isLoading: isLoading,
      error: error,
    );
  }
}

/// @nodoc
const $PostsState = _$PostsStateTearOff();

/// @nodoc
mixin _$PostsState {
  Posts get posts => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  GetPostsException? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostsStateCopyWith<PostsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostsStateCopyWith<$Res> {
  factory $PostsStateCopyWith(
          PostsState value, $Res Function(PostsState) then) =
      _$PostsStateCopyWithImpl<$Res>;
  $Res call({Posts posts, bool isLoading, GetPostsException? error});

  $PostsCopyWith<$Res> get posts;
  $GetPostsExceptionCopyWith<$Res>? get error;
}

/// @nodoc
class _$PostsStateCopyWithImpl<$Res> implements $PostsStateCopyWith<$Res> {
  _$PostsStateCopyWithImpl(this._value, this._then);

  final PostsState _value;
  // ignore: unused_field
  final $Res Function(PostsState) _then;

  @override
  $Res call({
    Object? posts = freezed,
    Object? isLoading = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      posts: posts == freezed
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as Posts,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as GetPostsException?,
    ));
  }

  @override
  $PostsCopyWith<$Res> get posts {
    return $PostsCopyWith<$Res>(_value.posts, (value) {
      return _then(_value.copyWith(posts: value));
    });
  }

  @override
  $GetPostsExceptionCopyWith<$Res>? get error {
    if (_value.error == null) {
      return null;
    }

    return $GetPostsExceptionCopyWith<$Res>(_value.error!, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc
abstract class _$PostsStateCopyWith<$Res> implements $PostsStateCopyWith<$Res> {
  factory _$PostsStateCopyWith(
          _PostsState value, $Res Function(_PostsState) then) =
      __$PostsStateCopyWithImpl<$Res>;
  @override
  $Res call({Posts posts, bool isLoading, GetPostsException? error});

  @override
  $PostsCopyWith<$Res> get posts;
  @override
  $GetPostsExceptionCopyWith<$Res>? get error;
}

/// @nodoc
class __$PostsStateCopyWithImpl<$Res> extends _$PostsStateCopyWithImpl<$Res>
    implements _$PostsStateCopyWith<$Res> {
  __$PostsStateCopyWithImpl(
      _PostsState _value, $Res Function(_PostsState) _then)
      : super(_value, (v) => _then(v as _PostsState));

  @override
  _PostsState get _value => super._value as _PostsState;

  @override
  $Res call({
    Object? posts = freezed,
    Object? isLoading = freezed,
    Object? error = freezed,
  }) {
    return _then(_PostsState(
      posts: posts == freezed
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as Posts,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as GetPostsException?,
    ));
  }
}

/// @nodoc

class _$_PostsState extends _PostsState with DiagnosticableTreeMixin {
  _$_PostsState(
      {this.posts = const Posts(items: []),
      this.isLoading = true,
      this.error = null})
      : super._();

  @JsonKey(defaultValue: const Posts(items: []))
  @override
  final Posts posts;
  @JsonKey(defaultValue: true)
  @override
  final bool isLoading;
  @JsonKey(defaultValue: null)
  @override
  final GetPostsException? error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PostsState(posts: $posts, isLoading: $isLoading, error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PostsState'))
      ..add(DiagnosticsProperty('posts', posts))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PostsState &&
            (identical(other.posts, posts) ||
                const DeepCollectionEquality().equals(other.posts, posts)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(posts) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  _$PostsStateCopyWith<_PostsState> get copyWith =>
      __$PostsStateCopyWithImpl<_PostsState>(this, _$identity);
}

abstract class _PostsState extends PostsState {
  factory _PostsState({Posts posts, bool isLoading, GetPostsException? error}) =
      _$_PostsState;
  _PostsState._() : super._();

  @override
  Posts get posts => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  GetPostsException? get error => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PostsStateCopyWith<_PostsState> get copyWith =>
      throw _privateConstructorUsedError;
}
