// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_tickets_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListTicketsDTO _$ListTicketsDTOFromJson(Map<String, dynamic> json) =>
    ListTicketsDTO(
      tickets: (json['tickets'] as List<dynamic>)
          .map((e) => TicketDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

abstract final class _$ListTicketsDTOJsonKeys {
  static const String tickets = 'tickets';
}

Map<String, dynamic> _$ListTicketsDTOToJson(ListTicketsDTO instance) =>
    <String, dynamic>{
      'tickets': instance.tickets,
    };
