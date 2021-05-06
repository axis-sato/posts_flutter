// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'posts.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Posts _$PostsFromJson(Map<String, dynamic> json) {
  return _Posts.fromJson(json);
}

/// @nodoc
class _$PostsTearOff {
  const _$PostsTearOff();

  _Posts call({required List<Post> items}) {
    return _Posts(
      items: items,
    );
  }

  Posts fromJson(Map<String, Object> json) {
    return Posts.fromJson(json);
  }
}

/// @nodoc
const $Posts = _$PostsTearOff();

/// @nodoc
mixin _$Posts {
  List<Post> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostsCopyWith<Posts> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostsCopyWith<$Res> {
  factory $PostsCopyWith(Posts value, $Res Function(Posts) then) =
      _$PostsCopyWithImpl<$Res>;
  $Res call({List<Post> items});
}

/// @nodoc
class _$PostsCopyWithImpl<$Res> implements $PostsCopyWith<$Res> {
  _$PostsCopyWithImpl(this._value, this._then);

  final Posts _value;
  // ignore: unused_field
  final $Res Function(Posts) _then;

  @override
  $Res call({
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Post>,
    ));
  }
}

/// @nodoc
abstract class _$PostsCopyWith<$Res> implements $PostsCopyWith<$Res> {
  factory _$PostsCopyWith(_Posts value, $Res Function(_Posts) then) =
      __$PostsCopyWithImpl<$Res>;
  @override
  $Res call({List<Post> items});
}

/// @nodoc
class __$PostsCopyWithImpl<$Res> extends _$PostsCopyWithImpl<$Res>
    implements _$PostsCopyWith<$Res> {
  __$PostsCopyWithImpl(_Posts _value, $Res Function(_Posts) _then)
      : super(_value, (v) => _then(v as _Posts));

  @override
  _Posts get _value => super._value as _Posts;

  @override
  $Res call({
    Object? items = freezed,
  }) {
    return _then(_Posts(
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Post>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Posts with DiagnosticableTreeMixin implements _Posts {
  const _$_Posts({required this.items});

  factory _$_Posts.fromJson(Map<String, dynamic> json) =>
      _$_$_PostsFromJson(json);

  @override
  final List<Post> items;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Posts(items: $items)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Posts'))
      ..add(DiagnosticsProperty('items', items));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Posts &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(items);

  @JsonKey(ignore: true)
  @override
  _$PostsCopyWith<_Posts> get copyWith =>
      __$PostsCopyWithImpl<_Posts>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PostsToJson(this);
  }
}

abstract class _Posts implements Posts {
  const factory _Posts({required List<Post> items}) = _$_Posts;

  factory _Posts.fromJson(Map<String, dynamic> json) = _$_Posts.fromJson;

  @override
  List<Post> get items => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PostsCopyWith<_Posts> get copyWith => throw _privateConstructorUsedError;
}
