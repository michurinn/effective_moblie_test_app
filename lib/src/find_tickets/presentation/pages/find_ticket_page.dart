import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:effective_test_work/assets/resources.dart';
import 'package:effective_test_work/core/enums/arrival_target.dart';
import 'package:effective_test_work/core/extensions/string_exttensions.dart';
import 'package:effective_test_work/core/router/app_router.dart';
import 'package:effective_test_work/src/find_tickets/domain/supporting_classes/route_arrival_class.dart';
import 'package:effective_test_work/src/find_tickets/presentation/state_managers/recommends_bloc/recommended_offers_bloc.dart';
import 'package:effective_test_work/src/find_tickets/presentation/widgets/find_tickets_widget.dart';
import 'package:effective_test_work/src/find_tickets/presentation/widgets/recommends_item_widget.dart';
import 'package:effective_test_work/src/find_tickets/presentation/widgets/select_arrival_botomsheet_widget.dart';
import 'package:effective_test_work/src/themes/colors/app_color_scheme.dart';
import 'package:effective_test_work/src/typography/app_typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:shimmer/shimmer.dart';

class FindTicketsPage extends StatelessWidget {
  final String departureInitialString;
  const FindTicketsPage({
    super.key,
    required this.departureInitialString,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Column(
          children: [
            Text(
              'Поиск дешевых\nавиабилетов'.hardcoded,
              style: AppTypography.title1.copyWith(
                color: AppColorScheme.dark().skeletonTertiary,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 32,
                ),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(16),
                    ),
                    color: AppColorScheme.dark().surfaceSecondary,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: FindTicketWidget(
                      backgroundColor: AppColorScheme.dark().secondary,
                      leadingSvgPath: SvgIcons.searchingIcon,
                      departurePlace: departureInitialString,
                      onarrivalPlaceTap: () async {
                        final result =
                            await showModalBottomSheet<RouteArrivalClass>(
                          context: context,
                          isScrollControlled: true,
                          builder: (context) => SelectArrivalBottomSheetWidget(
                            departurePlace: departureInitialString,
                          ),
                        );
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
                              unawaited(
                                  // ignore: use_build_context_synchronously
                                  context.router
                                      .pushNamed('mockWithBakcButton')),
                          };
                        }
                      },
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Музыкально отлететь'.hardcoded,
                  style: AppTypography.title1,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 25),
                child:
                    BlocBuilder<RecommendedOffersBloc, RecommendedOffersState>(
                  builder: (context, state) {
                    return switch (state) {
                      Empty() => const SizedBox.shrink(),
                      Loading() => Shimmer(
                          gradient: LinearGradient(
                            colors: [
                              Theme.of(context).colorScheme.background,
                              Theme.of(context).colorScheme.tertiary,
                              Theme.of(context).colorScheme.background,
                            ],
                          ),
                          child: ConstrainedBox(
                            constraints: BoxConstraints.loose(
                                const Size.fromHeight(210)),
                            child: ListView.builder(
                              itemCount: 3,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (_, __) => Padding(
                                padding: const EdgeInsets.all(8),
                                child: ClipRRect(
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(16),
                                  ),
                                  child: SizedBox(
                                    height: 210,
                                    width: 130,
                                    child: ColoredBox(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .background,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      Loaded(:final offers) => ConstrainedBox(
                          constraints: BoxConstraints.loose(
                            const Size.fromHeight(210),
                          ),
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: offers
                                .map((e) => Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: RecommmendsItemWidget(
                                        arrivalPlace: e.city,
                                        artistName: e.title,
                                        remotePictureUrl:
                                            'url of picture from server',
                                        placeholderPicturePath:
                                            _mockAssets.containsKey(e.title)
                                                ? _mockAssets[e.title] ?? ''
                                                : '',
                                        //TODO(me): replace this logic into BLoC
                                        price: NumberFormat.simpleCurrency(
                                          locale: 'ru-RU',
                                          decimalDigits: 0,
                                        ).format(e.price),
                                      ),
                                    ))
                                .toList(),
                          ),
                        ),
                      Error() => Text('Error'.hardcoded),
                    };
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

final Map<String, String> _mockAssets = {
  'Die Antwoord': 'assets/images/dieAntwoodMock.png',
  'Socrat&Lera': 'assets/images/socratMock.png',
  'Лампабикт': 'assets/images/x3Mock.png'
};
