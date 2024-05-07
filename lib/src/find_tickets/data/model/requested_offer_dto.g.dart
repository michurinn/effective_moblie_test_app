// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'requested_offer_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RequestedOfferDTO _$RequestedOfferDTOFromJson(Map<String, dynamic> json) =>
    RequestedOfferDTO(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      price: (json['price'] as num).toInt(),
      timeRange: (json['time_range'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

abstract final class _$RequestedOfferDTOJsonKeys {
  static const String id = 'id';
  static const String title = 'title';
  static const String price = 'price';
  static const String timeRange = 'time_range';
}

Map<String, dynamic> _$RequestedOfferDTOToJson(RequestedOfferDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'price': instance.price,
      'time_range': instance.timeRange,
    };
