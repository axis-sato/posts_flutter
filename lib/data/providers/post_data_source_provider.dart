import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:posts_flutter/data/providers/dio_provider.dart';
import 'package:posts_flutter/data/remote/post_data_source.dart';

final postDataSourceProvider = Provider<PostDataSource>(
    (ref) => PostDataSource(dio: ref.read(dioProvider)));
