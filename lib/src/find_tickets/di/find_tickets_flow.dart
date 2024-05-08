import 'package:auto_route/auto_route.dart';
import 'package:effective_test_work/api/dio_configurator.dart';
import 'package:effective_test_work/api/tickets_api.dart';
import 'package:effective_test_work/src/find_tickets/data/repository/recommends_repository.dart';
import 'package:effective_test_work/src/find_tickets/domain/converters/recommended_offer_converter.dart';
import 'package:effective_test_work/src/find_tickets/presentation/pages/find_ticket_page.dart';
import 'package:effective_test_work/src/find_tickets/presentation/state_managers/recommends_bloc/recommended_offers_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class FindTicketsFlow extends StatelessWidget implements AutoRouteWrapper {
  const FindTicketsFlow({super.key});

  @override
  Widget build(BuildContext context) {
    return const FindTicketsPage();
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => RecommendedOffersBloc(
        recommendedRepository: RecommendedRepository(
          ticketsApi: ITicketsApi(
              const AppDioConfigurator().create(interceptors: [], url: '')),
          converter: const RecommendedOfferConverter(),
        ),
      )..add(GetRecommednedOffersEvent()),
      child: this,
    );
  }
}
