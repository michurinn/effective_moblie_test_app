import 'package:auto_route/auto_route.dart';
import 'package:effective_test_work/core/extensions/string_exttensions.dart';
import 'package:effective_test_work/core/router/app_router.dart';
import 'package:effective_test_work/src/find_tickets/presentation/state_managers/requested_bloc/requested_offers_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';

class RouteSettingsPage extends StatelessWidget {
  final String placeOfDeparture;
  final String placeOfArrival;
  const RouteSettingsPage({
    required this.placeOfDeparture,
    required this.placeOfArrival,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(placeOfDeparture),
            Text(placeOfArrival),
            BlocBuilder<RequestedOffersBloc, RequestedOffersState>(
              builder: (context, state) {
                return switch (state) {
                  Empty() => Text('Empty'.hardcoded),
                  Loading() => Shimmer(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Colors.grey.shade300,
                          Colors.grey.shade400,
                        ],
                      ),
                      child: ConstrainedBox(
                        constraints:
                            BoxConstraints.tight(const Size.fromHeight(50)),
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (_, __) => SizedBox.square(
                            dimension: 50,
                          ),
                        ),
                      ),
                    ),
                  Loaded(:final offers) => ConstrainedBox(
                      constraints:
                          BoxConstraints.tight(const Size.fromHeight(50)),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: offers
                            .map(
                              (e) => SizedBox(
                                height: 50,
                                width: 250,
                                child: Text(e.title),
                              ),
                            )
                            .toList(),
                      ),
                    ),
                  Error() => Text('Error'.hardcoded),
                };
              },
            ),
            OutlinedButton.icon(
              onPressed: () {
                context.router.push(BuyTicketsFlowRoute(
                    placeOfArrival: placeOfArrival,
                    placeOfDeparture: placeOfDeparture,
                    date: DateTime.now(),
                    countOfPassengers: 1));
              },
              icon: Icon(Icons.face),
              label: Text('Mock buttons'),
            )
          ],
        ),
      ),
    );
  }
}
