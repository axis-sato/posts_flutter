import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:posts_flutter/utils/env.dart';
import 'app.dart';

void main() {
  E.init(Env.local);
  runApp(ProviderScope(child: App()));
}
