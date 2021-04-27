import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:posts_flutter/data/models/post.dart';

part "posts.freezed.dart";
part "posts.g.dart";

@freezed
class Posts with _$Posts {
  factory Posts({required List<Post> posts}) = _Posts;
  factory Posts.fromJson(Map<String, dynamic> json) => _$PostsFromJson(json);
}
