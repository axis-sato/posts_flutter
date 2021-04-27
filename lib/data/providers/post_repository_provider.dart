import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:posts_flutter/data/providers/post_data_source_provider.dart';
import 'package:posts_flutter/data/repositories/post_repository.dart';

final postRepositoryProvider = Provider<PostRepository>(
    (ref) => PostRepository(postDataSource: ref.read(postDataSourceProvider)));
