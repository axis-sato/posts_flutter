import 'package:flutter_test/flutter_test.dart';
import 'package:posts_flutter/utils/env.dart';

void main() {
  group('初期化', () {
    test('初期化前にinstanceにアクセスすると例外を投げること', () {
      expect(() => E.instance, throwsException);
    });
    test('Eクラスがシングルトンであること', () {
      final e1 = E.init(Env.local);
      final e2 = E.instance;

      expect(e1, e2);
    });
  });

  group('ゲッター', () {
    test('env', () {
      expect(E.init(Env.local).env, Env.local);
      expect(E.init(Env.dev).env, Env.dev);
      expect(E.init(Env.prod).env, Env.prod);
    });
    test('envStr', () {
      expect(E.init(Env.local).envStr, 'local');
      expect(E.init(Env.dev).envStr, 'dev');
      expect(E.init(Env.prod).envStr, 'prod');
    });
    test('title', () {
      expect(E.init(Env.local).title, 'Posts Flutter (local)');
      expect(E.init(Env.dev).title, 'Posts Flutter (dev)');
      expect(E.init(Env.prod).title, 'Posts Flutter');
    });
  });
}
