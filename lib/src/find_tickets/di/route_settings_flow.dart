import 'package:auto_route/auto_route.dart';
import 'package:effective_test_work/api/dio_configurator.dart';
import 'package:effective_test_work/api/tickets_api.dart';
import 'package:effective_test_work/src/find_tickets/data/repository/requested_repostory.dart';
import 'package:effective_test_work/src/find_tickets/domain/converters/requested_offer_converter.dart';
import 'package:effective_test_work/src/find_tickets/presentation/pages/route_settings_page.dart';
import 'package:effective_test_work/src/find_tickets/presentation/state_managers/requested_bloc/requested_offers_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class RouteSettingsFlow extends StatelessWidget implements AutoRouteWrapper {
  final String placeOfDeparture;
  final String placeOfArrival;
  const RouteSettingsFlow(
      {required this.placeOfArrival,
      required this.placeOfDeparture,
      super.key});

  @override
  Widget build(BuildContext context) {
    return RouteSettingsPage(
      placeOfArrival: placeOfArrival,
      placeOfDeparture: placeOfDeparture,
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => RequestedOffersBloc(
        requestedRepository: RequestedRepository(
          ticketsApi: ITicketsApi(
              const AppDioConfigurator().create(interceptors: [], url: '')),
          converter: const RequestedOfferConverter(),
        ),
      )..add(GetRequestedOffersEvent()),
      child: this,
    );
  }
}
