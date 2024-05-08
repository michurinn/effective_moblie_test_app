// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TicketDTO _$TicketDTOFromJson(Map<String, dynamic> json) => TicketDTO(
      id: (json['id'] as num).toInt(),
      badge: json['badge'] as String?,
      price: TicketDTO.priceFromJson(json['price'] as Map<String, dynamic>),
      providerName: json['provider_name'] as String,
      company: json['company'] as String,
      departure: json['departure'] as Map<String, dynamic>,
      arrival: json['arrival'] as Map<String, dynamic>,
      hasTransfer: json['has_transfer'] as bool,
      hasVisaTransfer: json['has_visa_transfer'] as bool,
      luggage: json['luggage'] as Map<String, dynamic>,
      handLuggage: json['hand_luggage'] as Map<String, dynamic>,
      isReturnable: json['is_returnable'] as bool,
      isExchangable: json['is_exchangable'] as bool,
    );

abstract final class _$TicketDTOJsonKeys {
  static const String id = 'id';
  static const String badge = 'badge';
  static const String price = 'price';
  static const String providerName = 'provider_name';
  static const String company = 'company';
  static const String departure = 'departure';
  static const String arrival = 'arrival';
  static const String hasTransfer = 'has_transfer';
  static const String hasVisaTransfer = 'has_visa_transfer';
  static const String luggage = 'luggage';
  static const String handLuggage = 'hand_luggage';
  static const String isReturnable = 'is_returnable';
  static const String isExchangable = 'is_exchangable';
}

Map<String, dynamic> _$TicketDTOToJson(TicketDTO instance) => <String, dynamic>{
      'id': instance.id,
      'badge': instance.badge,
      'price': instance.price,
      'provider_name': instance.providerName,
      'company': instance.company,
      'departure': instance.departure,
      'arrival': instance.arrival,
      'has_transfer': instance.hasTransfer,
      'has_visa_transfer': instance.hasVisaTransfer,
      'luggage': instance.luggage,
      'hand_luggage': instance.handLuggage,
      'is_returnable': instance.isReturnable,
      'is_exchangable': instance.isExchangable,
    };
