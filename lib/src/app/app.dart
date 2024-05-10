import 'package:effective_test_work/core/router/app_router.dart';
import 'package:effective_test_work/src/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

/// The Widget that configures your application.
class MyApp extends StatelessWidget {
  final _appRouter = AppRouter();

  // ignore: public_member_api_docs
  MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _appRouter.config(),
      // background.
      restorationScopeId: 'app',
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', ''), // English, no country code
      ],
      onGenerateTitle: (context) =>
          AppLocalizations.of(context)!.appTitle,
      theme: AppThemeData.darkTheme,
    );
  }
}

 