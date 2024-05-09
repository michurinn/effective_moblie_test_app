import 'package:cached_network_image/cached_network_image.dart';
import 'package:effective_test_work/assets/resources.dart';
import 'package:effective_test_work/src/typography/app_typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RecommmendsItemWidget extends StatelessWidget {
  final String remotePictureUrl;
  final String artistName;
  final String arrivalPlace;
  final String price;
  final String? placeholderPicturePath;
  const RecommmendsItemWidget({
    required this.remotePictureUrl,
    required this.artistName,
    required this.arrivalPlace,
    required this.price,
    super.key,
    this.placeholderPicturePath,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.tight(const Size(130, 210)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(16)),
              child: CachedNetworkImage(
                  imageUrl: remotePictureUrl,
                  errorWidget: (_, __, ___) => placeholderPicturePath == null
                      ? const Center(
                          child: CircularProgressIndicator.adaptive(),
                        )
                      : Image.asset(
                          placeholderPicturePath!,
                          fit: BoxFit.cover,
                        ),
                  placeholder: (_, __) => const Center(
                        child: CircularProgressIndicator.adaptive(),
                      )),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(artistName, style: AppTypography.title2),
          const SizedBox(
            height: 8,
          ),
          Text(arrivalPlace, style: AppTypography.title4),
          const SizedBox(
            height: 8,
          ),
          Row(children: [
            SvgPicture.asset(SvgIcons.airplaneIcon),
            const SizedBox(width: 5),
            Text(
              price,
              style: AppTypography.title4,
            )
          ]),
        ],
      ),
    );
  }
}
