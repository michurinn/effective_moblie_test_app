import 'package:effective_test_work/api/dio_configurator.dart';
import 'package:effective_test_work/api/tickets_api.dart';
import 'package:effective_test_work/src/find_tickets/data/repository/recommends_repository.dart';
import 'package:effective_test_work/src/find_tickets/domain/converters/recommended_offer_converter.dart';
import 'package:effective_test_work/src/find_tickets/presentation/state_managers/recommends_bloc/recommended_offers_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:effective_test_work/src/error_page.dart';
import 'package:effective_test_work/src/find_tickets/presentation/pages/find_ticket_page.dart';

/// The Widget that configures your application.
class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
      onGenerateTitle: (BuildContext context) =>
          AppLocalizations.of(context)!.appTitle,
      theme: ThemeData.light(),
      initialRoute: FindTicketsPage.routeName,
      onGenerateRoute: (RouteSettings routeSettings) {
        return MaterialPageRoute<void>(
          settings: routeSettings,
          builder: (BuildContext context) {
            switch (routeSettings.name) {
              case FindTicketsPage.routeName:
                return BlocProvider(
                  create: (context) => RecommendedOffersBloc(
                    recommendedRepository: RecommendedRepository(
                      ticketsApi: ITicketsApi(AppDioConfigurator()
                          .create(interceptors: [], url: '')),
                      converter: RecommendedOfferConverter(),
                    ),
                  )..add(GetRecommednedOffersEvent()),
                  child: const FindTicketsPage(),
                );
              default:
                return const ErrorPageView();
            }
          },
        );
      },
    );
  }
}
