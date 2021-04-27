import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:posts_flutter/data/remote/app_dio.dart';

final dioProvider = Provider<Dio>((_) => AppDio.getInstance());
