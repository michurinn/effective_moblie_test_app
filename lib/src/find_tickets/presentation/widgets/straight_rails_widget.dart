import 'package:effective_test_work/core/extensions/string_exttensions.dart';
import 'package:effective_test_work/src/find_tickets/domain/entities/requested_offer_entity.dart';
import 'package:effective_test_work/src/find_tickets/presentation/widgets/straight_rails_item_widget.dart';
import 'package:effective_test_work/src/themes/colors/app_color_scheme.dart';
import 'package:effective_test_work/src/typography/app_typography.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

/// Grouping widget "Straight rails"
class StraightRailsWidget extends StatelessWidget {
  final void Function(String place)? onPlaceTap;
  final Color backgroundColor;
  final List<RequestedOfferEntity> requestedOffers;

  /// Grouping widget "Straight rails"
  const StraightRailsWidget({
    required this.backgroundColor,
    required this.requestedOffers,
    super.key,
    this.onPlaceTap,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(16),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Прямые рельсы'.hardcoded,
                style: AppTypography.title1,
              ),
              const SizedBox(
                height: 10,
              ),
              ...requestedOffers.map(
                (e) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: StraightRailsItemWidget(
                    badgeColor: _getColorByIndex(
                      context,
                      requestedOffers.indexOf(e),
                    ),
                    listTimes: e.timeRange,
                    price: NumberFormat.simpleCurrency(
                      locale: 'ru-RU',
                      decimalDigits: 0,
                    ).format(e.price),
                    transporter: e.title,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

Color _getColorByIndex(BuildContext context, int index) {
  switch (index) {
    case 0:
      return AppColorScheme.of(context).buttonRed;
    case 1:
      return AppColorScheme.of(context).buttonBlue;
    case 2:
      return AppColorScheme.of(context).primary;
    default:
      return AppColorScheme.of(context).buttonRed;
  }
}
