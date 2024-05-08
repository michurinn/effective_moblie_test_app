import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:effective_test_work/core/enums/arrival_target.dart';
import 'package:effective_test_work/core/extensions/string_exttensions.dart';
import 'package:effective_test_work/core/router/app_router.dart';
import 'package:effective_test_work/src/find_tickets/domain/supporting_classes/route_arrival_class.dart';
import 'package:effective_test_work/src/find_tickets/presentation/state_managers/recommends_bloc/recommended_offers_bloc.dart';
import 'package:effective_test_work/src/find_tickets/presentation/widgets/find_tickets_widget.dart';
import 'package:effective_test_work/src/find_tickets/presentation/widgets/select_arrival_botomsheet_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';

class FindTicketsPage extends StatelessWidget {
  const FindTicketsPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Поиск дешевых авиабилетов'.hardcoded),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text('Музыкально отлететь'.hardcoded),
            FindTicketWidget(
              departurePlace: 'Minsk'.hardcoded,
              onarrivalPlaceTap: () async {
                final result = await showModalBottomSheet<RouteArrivalClass>(
                    isScrollControlled: true,
                    context: context,
                    builder: (context) => SelectArrivalBottomSheetWidget(
                          departurePlace: 'Minsk'.hardcoded,
                        ));
                if (result != null) {
                  return switch (result.arrivalTargetValue) {
                    arrivalTarget.airport => unawaited(
                        // ignore: use_build_context_synchronously
                        context.router.push(
                          RouteSettingsFlowRoute(
                            placeOfDeparture: 'Minsk'.hardcoded,
                            placeOfArrival: result.destination ??
                                'ErrorDestination'.hardcoded,
                          ),
                        ),
                      ),
                    arrivalTarget.complexRoute ||
                    arrivalTarget.everythere ||
                    arrivalTarget.hotSale ||
                    arrivalTarget.weekend =>
                      // ignore: use_build_context_synchronously
                      unawaited(context.router.pushNamed('mockWithBakcButton')),
                  };
                }
              },
            ),
            BlocBuilder<RecommendedOffersBloc, RecommendedOffersState>(
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
            )
          ],
        ),
      ),
    );
  }
}
