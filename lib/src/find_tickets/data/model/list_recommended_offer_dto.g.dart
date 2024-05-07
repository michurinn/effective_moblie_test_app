// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_recommended_offer_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListRecommendedOfferDTO _$ListRecommendedOfferDTOFromJson(
        Map<String, dynamic> json) =>
    ListRecommendedOfferDTO(
      offers: (json['offers'] as List<dynamic>)
          .map((e) => RecommendedOfferDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

abstract final class _$ListRecommendedOfferDTOJsonKeys {
  static const String offers = 'offers';
}

Map<String, dynamic> _$ListRecommendedOfferDTOToJson(
        ListRecommendedOfferDTO instance) =>
    <String, dynamic>{
      'offers': instance.offers,
    };
