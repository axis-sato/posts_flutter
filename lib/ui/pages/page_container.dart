import 'package:flutter/material.dart';
import 'package:posts_flutter/utils/env.dart';

class PageContainer extends StatelessWidget {
  const PageContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  Color get _bannerColor {
    switch (E.instance.env) {
      case Env.local:
        return Colors.grey;
      case Env.dev:
        return Colors.green;
      case Env.prod:
        return Colors.red;
    }
  }

  @override
  Widget build(BuildContext context) {
    if (E.instance.env == Env.prod) {
      return child;
    }
    return Banner(
      message: E.instance.envStr,
      color: _bannerColor,
      location: BannerLocation.topStart,
      child: child,
    );
  }
}
