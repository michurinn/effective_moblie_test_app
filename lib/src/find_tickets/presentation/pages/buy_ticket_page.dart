import 'package:effective_test_work/core/extensions/string_exttensions.dart';
import 'package:effective_test_work/src/find_tickets/presentation/state_managers/tickets_bloc/tickets_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';

class BuyTicketPage extends StatelessWidget {
  final String placeOfDeparture;
  final String placeOfArrival;
  final DateTime date;
  final int countOfPassengers;

  const BuyTicketPage(
      {super.key,
      required this.placeOfDeparture,
      required this.placeOfArrival,
      required this.date,
      required this.countOfPassengers});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(placeOfArrival),
          Text(placeOfDeparture),
          Text(date.toString()),
          Text(countOfPassengers.toString()),
          BlocBuilder<TicketsBloc, TicketsState>(
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
                              child: Text(e.company),
                            ),
                          )
                          .toList(),
                    ),
                  ),
                Error() => Text('Error'.hardcoded),
              };
            },
          ),
        ],
      ),
    );
  }
}
