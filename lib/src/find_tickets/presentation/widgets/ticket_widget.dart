import 'package:effective_test_work/core/extensions/string_exttensions.dart';
import 'package:effective_test_work/src/find_tickets/domain/entities/ticket_entity.dart';
import 'package:effective_test_work/src/find_tickets/presentation/widgets/colored_circle.dart';
import 'package:effective_test_work/src/themes/colors/app_color_scheme.dart';
import 'package:effective_test_work/src/typography/app_typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

class TicketWidget extends StatelessWidget {
  final TicketEntity ticketInfo;
  const TicketWidget({
    super.key,
    required this.ticketInfo,
  });

  @override
  Widget build(BuildContext context) {
    final flyTime =
        ticketInfo.arrival.date.difference(ticketInfo.departure.date);
    return Stack(
      clipBehavior: Clip.none,
      children: [
        DecoratedBox(
          decoration: BoxDecoration(
            color: AppColorScheme.of(context).backgroundTertiary,
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
                  NumberFormat.simpleCurrency(
                    locale: 'ru-RU',
                    decimalDigits: 0,
                  ).format(ticketInfo.price),
                  style: AppTypography.title1,
                ),
                const SizedBox(
                  height: 16,
                ),
                ConstrainedBox(
                  constraints: const BoxConstraints(maxHeight: 50),
                  child: Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ColoredCircleWidget(
                          color: AppColorScheme.of(context).buttonRed,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Text(
                              DateFormat(
                                'HH:mm',
                                'ru-RU',
                              ).format(
                                ticketInfo.departure.date,
                              ),
                              style: AppTypography.text2,
                            ),
                            Text(
                              ticketInfo.departure.airport.name,
                              style: AppTypography.text2,
                            ),
                          ],
                        ),
                        const Text(' - '),
                        Column(
                          children: [
                            Text(
                              DateFormat(
                                'HH:mm',
                                'ru-RU',
                              ).format(
                                ticketInfo.arrival.date,
                              ),
                              style: AppTypography.text2,
                            ),
                            Text(
                              ticketInfo.arrival.airport.name,
                              style: AppTypography.text2,
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Wrap(
                          direction: Axis.vertical,
                          children: [
                            Text(
                              '${flyTime.inHours} hours ${flyTime.inMinutes.remainder(60)} minutes '
                                  .hardcoded,
                              style: AppTypography.text1,
                            ),
                            if (ticketInfo.hasTransfer)
                              Text(
                                '/ без пересадок'.hardcoded,
                                style: AppTypography.title4,
                              ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        if (ticketInfo.badge != null)
          Positioned(
            top: -15,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: AppColorScheme.of(context).buttonDarkBlue,
                borderRadius: const BorderRadius.all(
                  Radius.circular(50),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Text(
                  ticketInfo.badge!,
                  style: AppTypography.text2,
                ),
              ),
            ),
          ),
      ],
    );
  }
}
