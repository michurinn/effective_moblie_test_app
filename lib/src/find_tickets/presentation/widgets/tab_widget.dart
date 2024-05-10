import 'package:effective_test_work/src/typography/app_typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// Tab for configure route (date, count of passengers etc.)
class TabWidget extends StatelessWidget {
  final Color color;
  final String? iconSvgPath;
  final String? labelText;

  /// Tab for configure route (date, count of passengers etc.)
  const TabWidget(
      {required this.color, super.key, this.iconSvgPath, this.labelText});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(
          Radius.circular(50),
        ),
      ),
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        alignment: WrapAlignment.center,
        children: [
          if (iconSvgPath != null)
            Padding(
              padding: const EdgeInsets.only(left: 8, top: 8, bottom: 8),
              child: SvgPicture.asset(
                iconSvgPath!,
              ),
            ),
          if (labelText == null) const SizedBox(width: 8),
          if (labelText != null)
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                labelText!,
                style: AppTypography.title4,
              ),
            ),
        ],
      ),
    );
  }
}
