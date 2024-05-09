import 'package:effective_test_work/assets/resources.dart';
import 'package:effective_test_work/core/extensions/string_exttensions.dart';
import 'package:effective_test_work/src/find_tickets/presentation/widgets/popular_item_widget.dart';
import 'package:flutter/material.dart';

class PopularDestinationsWidget extends StatelessWidget {
  final void Function(String place) onPlaceTap;
  final Color backgroundColor;
  const PopularDestinationsWidget({super.key, required this.backgroundColor, required this.onPlaceTap});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              PopularItemWidget(
                arrivalPlace: 'Стамбул'.hardcoded,
                remotePictureUrl: '',
                placeholderPicturePath: Images.istanbul,
                onPlaceTap: onPlaceTap,
              ),
              PopularItemWidget(
                arrivalPlace: 'Сочи'.hardcoded,
                remotePictureUrl: '',
                placeholderPicturePath: Images.sochi,
                onPlaceTap: onPlaceTap,
              ),
              PopularItemWidget(
                arrivalPlace: 'Пхукет'.hardcoded,
                remotePictureUrl: '',
                placeholderPicturePath: Images.phuket,
                onPlaceTap: onPlaceTap,
              )
            ],
          ),
        ));
  }
}
