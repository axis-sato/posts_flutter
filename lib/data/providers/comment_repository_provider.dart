import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:posts_flutter/data/providers/comment_data_source_provider.dart';
import 'package:posts_flutter/data/repositories/comment_repository.dart';

final commentRepositoryProvider = Provider<CommentRepository>((ref) =>
    CommentRepository(commentDataSource: ref.read(commentDataSourceProvider)));
