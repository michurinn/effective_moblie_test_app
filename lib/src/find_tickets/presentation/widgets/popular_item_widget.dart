import 'package:cached_network_image/cached_network_image.dart';
import 'package:effective_test_work/core/extensions/string_exttensions.dart';
import 'package:effective_test_work/src/themes/colors/app_color_scheme.dart';
import 'package:effective_test_work/src/typography/app_typography.dart';
import 'package:flutter/material.dart';

class PopularItemWidget extends StatelessWidget {
  final void Function(String place)? onPlaceTap;
  final String remotePictureUrl;
  final String arrivalPlace;
  final String? placeholderPicturePath;
  const PopularItemWidget({
    required this.remotePictureUrl,
    required this.arrivalPlace,
    super.key,
    this.placeholderPicturePath,
    this.onPlaceTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onPlaceTap?.call(arrivalPlace),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(8),
                  ),
                  child: SizedBox(
                    width: 40,
                    height: 40,
                    child: CachedNetworkImage(
                      imageUrl: remotePictureUrl,
                      errorWidget: (_, __, ___) =>
                          placeholderPicturePath == null
                              ? const Center(
                                  child: CircularProgressIndicator.adaptive(),
                                )
                              : Image.asset(
                                  placeholderPicturePath!,
                                  fit: BoxFit.cover,
                                ),
                      placeholder: (_, __) => const Center(
                        child: CircularProgressIndicator.adaptive(),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      arrivalPlace,
                      style: AppTypography.title2,
                    ),
                    const SizedBox(height: 4,),
                    Text(
                      'Популярное направление'.hardcoded,
                      style: AppTypography.title4.copyWith(
                        color: AppColorScheme.of(context).inactive,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Divider(
              color: AppColorScheme.of(context).inactive,
            )
          ],
        ),
      ),
    );
  }
}
