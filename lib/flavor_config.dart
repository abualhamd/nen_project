class FlavorConfig {
  final String _appTitle;
  final String _flavor;

  static FlavorConfig? _instance;

  FlavorConfig._internal(this._appTitle, this._flavor);

  factory FlavorConfig({required String title, required String flavor}) {
    _instance ??= FlavorConfig._internal(title, flavor);
    return _instance!;
  }

  static String get appTitle => _instance!._appTitle;
  static String get flavor => _instance!._flavor;
}
