import 'package:effective_test_work/src/find_tickets/presentation/widgets/colored_circle.dart';
import 'package:effective_test_work/src/themes/colors/app_color_scheme.dart';
import 'package:effective_test_work/src/typography/app_typography.dart';
import 'package:flutter/material.dart';

///The element of the "Straight rails" widget
class StraightRailsItemWidget extends StatelessWidget {
  final String transporter;
  final String price;
  final List<String> listTimes;
  final Color badgeColor;

  ///The element of the "Straight rails" widget
  const StraightRailsItemWidget({
    required this.transporter,
    required this.price,
    required this.listTimes,
    required this.badgeColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
            padding: const EdgeInsets.all(8),
            child: ColoredCircleWidget(color: badgeColor)),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(transporter, style: AppTypography.text2),
                  Text(
                    price,
                    style: AppTypography.text2.copyWith(
                      color: AppColorScheme.of(context).buttonBlue,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Wrap(
                runSpacing: 5,
                spacing: 5,
                children: listTimes
                    .map(
                      (e) => Text(e, style: AppTypography.title4),
                    )
                    .toList(),
              ),
              Divider(
                color: AppColorScheme.of(context).inactive,
              )
            ],
          ),
        ),
      ],
    );
  }
}
