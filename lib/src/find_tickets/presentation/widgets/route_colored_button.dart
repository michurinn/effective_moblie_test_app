import 'package:effective_test_work/src/typography/app_typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// Square Colored button for choosing the finding route strategy
class RouteColoredButton extends StatelessWidget {
  final VoidCallback? onTap;
  final String label;
  final String svgPath;
  final Color color;
  const RouteColoredButton({
    super.key,
    required this.onTap,
    required this.label,
    required this.svgPath,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        width: 70,
        child: Column(
          children: [
            DecoratedBox(
              decoration: BoxDecoration(
                color: color,
                borderRadius: const BorderRadius.all(
                  Radius.circular(8),
                ),
              ),
              child: SizedBox(
                height: 48,
                width: 48,
                child: SvgPicture.asset(
                  svgPath,
                  fit: BoxFit.none,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                label,
                style: AppTypography.title4,
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
