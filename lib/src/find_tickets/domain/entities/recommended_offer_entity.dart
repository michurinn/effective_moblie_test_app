import 'package:freezed_annotation/freezed_annotation.dart';

part 'recommended_offer_entity.freezed.dart';


@freezed
class RecommendedOfferEntity with _$RecommendedOfferEntity {
  const factory RecommendedOfferEntity({
    required int id,
    required String city,
    required String title,
    required int price,
  }) = _RecommendedOfferEntity;
}