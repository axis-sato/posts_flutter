import 'package:flutter/material.dart';
import 'package:posts_flutter/ui/pages/page_container.dart';
import 'package:posts_flutter/ui/pages/posts/posts_page.dart';
import 'package:posts_flutter/utils/env.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: E.instance.title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PageContainer(
        child: PostsPage(),
      ),
    );
  }
}
