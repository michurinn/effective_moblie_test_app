// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recommended_offer_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RecommendedOfferDTO _$RecommendedOfferDTOFromJson(Map<String, dynamic> json) =>
    RecommendedOfferDTO(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      price: RecommendedOfferDTO.priceFromJson(
          json['price'] as Map<String, dynamic>),
      city: json['town'] as String,
    );

abstract final class _$RecommendedOfferDTOJsonKeys {
  static const String id = 'id';
  static const String city = 'town';
  static const String title = 'title';
  static const String price = 'price';
}

Map<String, dynamic> _$RecommendedOfferDTOToJson(
        RecommendedOfferDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'town': instance.city,
      'title': instance.title,
      'price': instance.price,
    };
