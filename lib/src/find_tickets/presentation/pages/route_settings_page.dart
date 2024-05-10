import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:effective_test_work/assets/resources.dart';
import 'package:effective_test_work/core/extensions/string_exttensions.dart';
import 'package:effective_test_work/core/router/app_router.dart';
import 'package:effective_test_work/src/find_tickets/presentation/state_managers/requested_bloc/requested_offers_bloc.dart';
import 'package:effective_test_work/src/find_tickets/presentation/state_managers/route_settings_change_notifier.dart/route_settings_change_notifier.dart';
import 'package:effective_test_work/src/find_tickets/presentation/widgets/find_tickets_widget.dart';
import 'package:effective_test_work/src/find_tickets/presentation/widgets/straight_rails_widget.dart';
import 'package:effective_test_work/src/find_tickets/presentation/widgets/tab_widget.dart';
import 'package:effective_test_work/src/themes/colors/app_color_scheme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
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
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ListenableBuilder(
                listenable: context.read<RouteSettingsChangeNotifier>(),
                builder: (context, _) {
                  return FindTicketWidget(
                    departureFieldIsButton: false,
                    swopeAviable: true,
                    leadingSvgPath: SvgIcons.backArrowIcon,
                    backgroundColor: AppColorScheme.of(context).secondary,
                    onLeadingIconTap: () => context.router.maybePop(),
                    departurePlace: context
                            .read<RouteSettingsChangeNotifier>()
                            .departurePlace ??
                        placeOfDeparture,
                    arrivalPlace: context
                            .read<RouteSettingsChangeNotifier>()
                            .arrivalPlace ??
                        placeOfArrival,
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: DefaultTabController(
                length: 4,
                child: TabBar(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  labelPadding: const EdgeInsets.symmetric(horizontal: 4),
                  dividerHeight: 0,
                  tabAlignment: TabAlignment.start,
                  splashFactory: NoSplash.splashFactory,
                  onTap: (value) async {
                    switch (value) {
                      case 0:
                        final DateTime? requestedDate = Platform.isAndroid
                            ? await showDatePicker(
                                // ignore: use_build_context_synchronously
                                context: context,
                                firstDate: DateTime.now(),
                                lastDate: DateTime.now()
                                    .add(const Duration(days: 365)),
                                initialDate: DateTime.now(),
                              )
                            : await showCupertinoDialog(
                                builder: (context) => _CupertinoDatePickerBody(
                                    AppColorScheme.of(context).background),
                                // ignore: use_build_context_synchronously
                                context: context,
                              );
                        if (requestedDate != null) {
                          // ignore: use_build_context_synchronously
                          context
                              .read<RouteSettingsChangeNotifier>()
                              .setReturnTicketDate(requestedDate);
                        }

                      case 1:
                        final DateTime? requestedDate = Platform.isAndroid
                            ? await showDatePicker(
                                // ignore: use_build_context_synchronously
                                context: context,
                                firstDate: DateTime.now(),
                                lastDate: DateTime.now()
                                    .add(const Duration(days: 365)),
                                initialDate: DateTime.now(),
                              )
                            : await showCupertinoDialog(
                                builder: (context) => _CupertinoDatePickerBody(
                                    AppColorScheme.of(context).background),
                                // ignore: use_build_context_synchronously
                                context: context,
                              );
                        if (requestedDate != null) {
                          // ignore: use_build_context_synchronously
                          context
                              .read<RouteSettingsChangeNotifier>()
                              .setArrivalDate(requestedDate);
                        }

                      default:
                    }
                  },
                  indicatorColor: Colors.transparent,
                  isScrollable: true,
                  tabs: [
                    ListenableBuilder(
                      listenable: context.read<RouteSettingsChangeNotifier>(),
                      builder: (context, _) {
                        final currentReturnDate = context
                            .read<RouteSettingsChangeNotifier>()
                            .returnTicketDate;
                        return currentReturnDate == null
                            ? TabWidget(
                                iconSvgPath: SvgIcons.plusIcon,
                                labelText: 'Обратно'.hardcoded,
                                color: AppColorScheme.of(context).secondary,
                              )
                            : TabWidget(
                                labelText: DateFormat(
                                  'dd MMM, EEE',
                                  'ru-RU',
                                ).format(
                                  currentReturnDate,
                                ),
                                color: AppColorScheme.of(context).secondary,
                              );
                      },
                    ),
                    ListenableBuilder(
                      listenable: context.read<RouteSettingsChangeNotifier>(),
                      builder: (context, _) {
                        final currentReturnDate = context
                            .read<RouteSettingsChangeNotifier>()
                            .arrivalDate;
                        return TabWidget(
                          labelText: DateFormat(
                            'dd MMM, EEE',
                            'ru-RU',
                          ).format(
                            currentReturnDate,
                          ),
                          color: AppColorScheme.of(context).secondary,
                        );
                      },
                    ),
                    TabWidget(
                      labelText: '1, эконом'.hardcoded,
                      iconSvgPath: SvgIcons.profileIcon,
                      color: AppColorScheme.of(context).secondary,
                    ),
                    TabWidget(
                      labelText: ''.hardcoded,
                      iconSvgPath: SvgIcons.settingsIcon,
                      color: AppColorScheme.of(context).secondary,
                    )
                  ],
                ),
              ),
            ),
            BlocBuilder<RequestedOffersBloc, RequestedOffersState>(
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
                      child: StraightRailsWidget(
                        backgroundColor:
                            AppColorScheme.of(context).skeletonSecondary,
                        requestedOffers: offers,
                      ),
                    ),
                  Error() => Text('Error'.hardcoded),
                };
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: TextButton(
                onPressed: () {
                  context.router.push(
                    BuyTicketsFlowRoute(
                      placeOfArrival: placeOfArrival,
                      placeOfDeparture: placeOfDeparture,
                      date: DateTime.now(),
                      countOfPassengers: 1,
                    ),
                  );
                },
                child: Text('Посмотреть все билеты'.hardcoded),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CupertinoDatePickerBody extends StatelessWidget {
  final Color color;

  const _CupertinoDatePickerBody(this.color);

  @override
  Widget build(BuildContext context) {
    DateTime? plannedDate;
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28),
        child: Container(
          decoration: BoxDecoration(
            color: color,
            borderRadius: const BorderRadius.all(Radius.circular(20)),
          ),
          width: MediaQuery.of(context).size.width,
          height: 350,
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: 300,
                child: CupertinoDatePicker(
                  initialDateTime: plannedDate,
                  minimumDate: DateTime.now(),
                  onDateTimeChanged: (value) {
                    plannedDate = value;
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop(plannedDate);
                    },
                    child: Text(
                      'Confirm'.hardcoded,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      'Cancel'.hardcoded,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
