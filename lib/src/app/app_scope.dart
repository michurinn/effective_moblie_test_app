import 'package:shared_preferences/shared_preferences.dart';

class AppScope {
  final SharedPreferences sharedPreferences;

  AppScope({
    required SharedPreferences this.sharedPreferences,
  });
}
