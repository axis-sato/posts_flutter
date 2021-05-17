enum Env { local, dev, prod }

class E {
  static E? _instance;
  static E get instance {
    if (_instance == null) {
      throw Exception('初期化されていません。');
    }

    return _instance!;
  }

  final Env _env;

  factory E.init(Env env) {
    final instance = E._internal(env);
    _instance = instance;
    return instance;
  }

  E._internal(this._env);

  Env get env => _env;

  String get envStr {
    switch (_env) {
      case Env.local:
        return "local";
      case Env.dev:
        return "dev";
      case Env.prod:
        return "prod";
    }
  }

  String get title {
    switch (_env) {
      case Env.local:
        return "Posts Flutter (local)";
      case Env.dev:
        return "Posts Flutter (dev)";
      case Env.prod:
        return "Posts Flutter";
    }
  }
}
