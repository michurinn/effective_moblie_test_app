import 'package:effective_test_work/src/app/app.dart';
import 'package:effective_test_work/src/app/app_scope.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // TODO(me): create AppFlow to handle app initialization.
  final sharedPreferences = await SharedPreferences.getInstance();
  runApp(
    Provider<AppScope>(
      create: (context) => AppScope(sharedPreferences: sharedPreferences),
      child: MyApp(),
    ),
  );
}
