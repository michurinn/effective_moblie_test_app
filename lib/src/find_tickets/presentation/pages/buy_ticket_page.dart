import 'package:auto_route/auto_route.dart';
import 'package:effective_test_work/core/extensions/string_exttensions.dart';
import 'package:effective_test_work/src/find_tickets/presentation/state_managers/route_settings_change_notifier.dart/route_settings_change_notifier.dart';
import 'package:effective_test_work/src/find_tickets/presentation/state_managers/tickets_bloc/tickets_bloc.dart';
import 'package:effective_test_work/src/find_tickets/presentation/widgets/filter_with_graps_floating_action_widget.dart';
import 'package:effective_test_work/src/find_tickets/presentation/widgets/ticket_widget.dart';
import 'package:effective_test_work/src/themes/colors/app_color_scheme.dart';
import 'package:effective_test_work/src/typography/app_typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:shimmer/shimmer.dart';

/// Page with all tickets
class BuyTicketPage extends StatelessWidget {
  final String placeOfDeparture;
  final String placeOfArrival;
  final DateTime date;
  final int countOfPassengers;

  /// Page with all tickets
  const BuyTicketPage({
    super.key,
    required this.placeOfDeparture,
    required this.placeOfArrival,
    required this.date,
    required this.countOfPassengers,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => context.router.maybePop(),
          icon: Icon(
            Icons.arrow_back,
            color: AppColorScheme.of(context).buttonBlue,
          ),
        ),
        backgroundColor: AppColorScheme.of(context).backgroundTertiary,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ListenableBuilder(
            listenable: context.read<RouteSettingsChangeNotifier>(),
            builder: (context, _) {
              final arrivalPlace =
                  context.read<RouteSettingsChangeNotifier>().arrivalPlace ??
                      '';
              final departurePlace =
                  context.read<RouteSettingsChangeNotifier>().departurePlace ??
                      '';
              final arrivalDate =
                  context.read<RouteSettingsChangeNotifier>().arrivalDate;
              final countOfPassangers =
                  context.read<RouteSettingsChangeNotifier>().countOfPassangers;
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '$departurePlace - $arrivalPlace',
                    style: AppTypography.title2,
                  ),
                  Text(
                    '${DateFormat(
                      'dd MMM',
                      'ru-RU',
                    ).format(
                      arrivalDate,
                    )}, $countOfPassangers${' Пассажир'.hardcoded}',
                    style: AppTypography.title4.copyWith(
                      color: AppColorScheme.of(context).surface,
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            BlocBuilder<TicketsBloc, TicketsState>(
              builder: (context, state) {
                return switch (state) {
                  Empty() => Text('Empty'.hardcoded),
                  Loading() => Shimmer(
                      gradient: LinearGradient(
                        colors: [
                          AppColorScheme.of(context).backgroundTertiary,
                          AppColorScheme.of(context).shimmer,
                          AppColorScheme.of(context).backgroundTertiary,
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(18),
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: AppColorScheme.of(context).background,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.width / 3,
                          ),
                        ),
                      ),
                    ),
                  Loaded(:final offers) => Padding(
                      padding: const EdgeInsets.all(18),
                      child: Column(
                        children: [
                          ...offers.map(
                            (e) => Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TicketWidget(ticketInfo: e),
                            ),
                          )
                        ],
                      ),
                    ),
                  Error() => Text('Error'.hardcoded),
                };
              },
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FilterWithGraphFloatingActionWidget(),
    );
  }
}
