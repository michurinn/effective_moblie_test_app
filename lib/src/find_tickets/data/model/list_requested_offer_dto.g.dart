// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_requested_offer_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListRequestedOfferDTO _$ListRequestedOfferDTOFromJson(
        Map<String, dynamic> json) =>
    ListRequestedOfferDTO(
      ticketOffers: (json['tickets_offers'] as List<dynamic>)
          .map((e) => RequestedOfferDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

abstract final class _$ListRequestedOfferDTOJsonKeys {
  static const String ticketOffers = 'tickets_offers';
}

Map<String, dynamic> _$ListRequestedOfferDTOToJson(
        ListRequestedOfferDTO instance) =>
    <String, dynamic>{
      'tickets_offers': instance.ticketOffers,
    };
