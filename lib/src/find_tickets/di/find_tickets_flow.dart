import 'package:auto_route/auto_route.dart';
import 'package:effective_test_work/api/dio_configurator.dart';
import 'package:effective_test_work/api/tickets_api.dart';
import 'package:effective_test_work/src/app/app_scope.dart';
import 'package:effective_test_work/src/find_tickets/data/repository/recommends_repository.dart';
import 'package:effective_test_work/src/find_tickets/domain/converters/recommended_offer_converter.dart';
import 'package:effective_test_work/src/find_tickets/presentation/pages/find_ticket_page.dart';
import 'package:effective_test_work/src/find_tickets/presentation/state_managers/recommends_bloc/recommended_offers_bloc.dart';
import 'package:effective_test_work/src/local_storage/route_default_info_storage/route_default_info_storage.dart';
import 'package:effective_test_work/src/local_storage/route_default_info_storage_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

@RoutePage()
class FindTicketsFlow extends StatelessWidget implements AutoRouteWrapper {
  const FindTicketsFlow({super.key});

  @override
  Widget build(BuildContext context) {
    final defaultRoute =
        context.read<RouteDefaultInfoController>().getDefaultRoute();
    return FindTicketsPage(
      departureInitialString: defaultRoute ?? 'Откуда - Москва',
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    final sharedPreferences = context.read<AppScope>().sharedPreferences;
    return BlocProvider(
      create: (context) => RecommendedOffersBloc(
        recommendedRepository: RecommendedRepository(
          ticketsApi: ITicketsApi(
            const AppDioConfigurator().create(
              interceptors: [],
              url: '',
            ),
          ),
          converter: const RecommendedOfferConverter(),
        ),
      )..add(GetRecommednedOffersEvent()),
      child: Provider(
          create: (context) => RouteDefaultInfoController(
                storage: RouteDefaultInfoStorage(
                  prefs: sharedPreferences,
                ),
              ),
          child: this),
    );
  }
}
