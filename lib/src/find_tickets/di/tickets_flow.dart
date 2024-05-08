import 'package:auto_route/auto_route.dart';
import 'package:effective_test_work/api/dio_configurator.dart';
import 'package:effective_test_work/api/tickets_api.dart';
import 'package:effective_test_work/src/find_tickets/data/repository/tickets_repository.dart';
import 'package:effective_test_work/src/find_tickets/domain/converters/ticket_converter.dart';
import 'package:effective_test_work/src/find_tickets/presentation/pages/buy_ticket_page.dart';
import 'package:effective_test_work/src/find_tickets/presentation/state_managers/tickets_bloc/tickets_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class BuyTicketsFlow extends StatelessWidget implements AutoRouteWrapper {
  final String placeOfDeparture;
  final String placeOfArrival;
  final DateTime date;
  final int countOfPassengers;
  const BuyTicketsFlow({
    required this.placeOfArrival,
    required this.placeOfDeparture,
    required this.date,
    required this.countOfPassengers,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BuyTicketPage(
      placeOfArrival: placeOfArrival,
      placeOfDeparture: placeOfDeparture,
      countOfPassengers: countOfPassengers,
      date: date,
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => TicketsBloc(
        ticketsRepository: TicketsRepository(
          ticketsApi: ITicketsApi(
              const AppDioConfigurator().create(interceptors: [], url: '')),
          ticketsConverter: const TicketConverter(),
        ),
      )..add(GetTicketsEvent()),
      child: this,
    );
  }
}
