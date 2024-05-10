import 'package:effective_test_work/assets/resources.dart';
import 'package:effective_test_work/core/extensions/string_exttensions.dart';
import 'package:effective_test_work/src/themes/app_sizes.dart';
import 'package:effective_test_work/src/themes/colors/app_color_scheme.dart';
import 'package:effective_test_work/src/typography/app_typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FilterWithGraphFloatingActionWidget extends StatelessWidget {
  const FilterWithGraphFloatingActionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
        decoration: BoxDecoration(
          color: AppColorScheme.of(context).buttonBlue,
          borderRadius: BorderRadius.circular(AppSizes.double50),
        ),
        child: Row(mainAxisSize: MainAxisSize.min, children: [
          OutlinedButton(
              onPressed: () {},
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  IconButton(
                      icon: SvgPicture.asset(SvgIcons.settingsIcon, color: AppColorScheme.of(context).primary,),
                      onPressed: () {}),
                  Text('Фильтр'.hardcoded,
                      style: AppTypography.text2),
                ],
              )),
          OutlinedButton(
              onPressed: () {},
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  IconButton(
                      icon: Icon(Icons.auto_graph_outlined),
                      onPressed: () {}),
                  Text('График цен'.hardcoded,
                      style: AppTypography.text2),
                ],
              )),
        ]));
  }
}
