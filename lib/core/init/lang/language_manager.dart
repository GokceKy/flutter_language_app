import 'dart:ui';

class LanguageManager {
  static LanguageManager? _instance;

  // Getter metodu kullanarak singleton örneği alınır
  static LanguageManager get instance {
    _instance ??= LanguageManager
        ._init(); //null ise nesne oluşturur ve atar(Lazy Initialization)
    return _instance!;
  }

  // Private constructor
  LanguageManager._init();

  final enLocale = const Locale("en", "US");
  List<Locale> get supportedLocales => [enLocale];
}
