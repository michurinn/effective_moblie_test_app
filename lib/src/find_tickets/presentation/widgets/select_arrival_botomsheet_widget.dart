import 'package:auto_route/auto_route.dart';
import 'package:effective_test_work/assets/resources.dart';
import 'package:effective_test_work/core/enums/arrival_target.dart';
import 'package:effective_test_work/core/extensions/string_exttensions.dart';
import 'package:effective_test_work/src/find_tickets/domain/supporting_classes/route_arrival_class.dart';
import 'package:effective_test_work/src/find_tickets/presentation/state_managers/route_settings_change_notifier.dart/route_settings_change_notifier.dart';
import 'package:effective_test_work/src/find_tickets/presentation/widgets/find_tickets_widget.dart';
import 'package:effective_test_work/src/find_tickets/presentation/widgets/popular_destinations_widget.dart';
import 'package:effective_test_work/src/find_tickets/presentation/widgets/route_colored_button.dart';
import 'package:effective_test_work/src/themes/colors/app_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/// 'Search' Page
class SelectArrivalBottomSheetWidget extends StatelessWidget {
  final String departurePlace;

  /// 'Search' Page
  const SelectArrivalBottomSheetWidget(
      {required this.departurePlace, super.key});

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 1,
      builder: (context, _) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: SizedBox(
                width: 50,
                child: Divider(
                  thickness: 3,
                  height: 5,
                  color: AppColorScheme.of(context).inactive,
                ),
              ),
            ),
            ListenableBuilder(
              listenable: context.read<RouteSettingsChangeNotifier>(),
              builder: (context, child) => FindTicketWidget(
                departureFieldIsButton: false,
                backgroundColor: AppColorScheme.of(context).secondary,
                departurePlace: departurePlace,
                arrivalPlace:
                    context.read<RouteSettingsChangeNotifier>().arrivalPlace,
                arrivalPlaceSvgPath: SvgIcons.searchingIcon,
                departurePlaceSvgPath: SvgIcons.arrivalPlaneIcon,
                onDeparturePlaceChanged: (value) {
                  context
                      .read<RouteSettingsChangeNotifier>()
                      .setDeparturePlace(value);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RouteColoredButton(
                    onTap: () => context.router.maybePop(
                      RouteArrivalClass(
                        arrivalTargetValue: arrivalTarget.complexRoute,
                      ),
                    ),
                    label: 'Сложный маршрут'.hardcoded,
                    svgPath: SvgIcons.complexRouteIcon,
                    color: AppColorScheme.of(context).buttonGreen,
                  ),
                  RouteColoredButton(
                    onTap: () => context.router.maybePop(
                      RouteArrivalClass(
                        arrivalTargetValue: arrivalTarget.everythere,
                      ),
                    ),
                    label: 'Куда угодно'.hardcoded,
                    svgPath: SvgIcons.everythereIcon,
                    color: AppColorScheme.of(context).buttonBlue,
                  ),
                  RouteColoredButton(
                    onTap: () => context.router.maybePop(
                      RouteArrivalClass(
                        arrivalTargetValue: arrivalTarget.weekend,
                      ),
                    ),
                    label: 'Выходные'.hardcoded,
                    svgPath: SvgIcons.weekendIcon,
                    color: AppColorScheme.of(context).buttonDarkBlue,
                  ),
                  RouteColoredButton(
                    onTap: () => context.router.maybePop(
                      RouteArrivalClass(
                        arrivalTargetValue: arrivalTarget.hotSale,
                      ),
                    ),
                    label: 'Горячие билеты'.hardcoded,
                    svgPath: SvgIcons.hotSaleIcon,
                    color: AppColorScheme.of(context).buttonRed,
                  ),
                ],
              ),
            ),
            PopularDestinationsWidget(
              backgroundColor: AppColorScheme.of(context).surfaceSecondary,
              onPlaceTap: (place) {
                context
                    .read<RouteSettingsChangeNotifier>()
                    .setArrivalPlace(place);
                context.router.maybePop(
                  RouteArrivalClass(
                    destination: place,
                    arrivalTargetValue: arrivalTarget.airport,
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
