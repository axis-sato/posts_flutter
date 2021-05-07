import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:posts_flutter/data/providers/dio_provider.dart';
import 'package:posts_flutter/data/remote/comment_data_source.dart';

final commentDataSourceProvider = Provider<CommentDataSource>(
    (ref) => CommentDataSource(dio: ref.read(dioProvider)));
