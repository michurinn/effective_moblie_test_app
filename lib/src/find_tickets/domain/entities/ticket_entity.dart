import 'package:freezed_annotation/freezed_annotation.dart';

part 'ticket_entity.freezed.dart';

@freezed
class TicketEntity with _$TicketEntity {
  const factory TicketEntity({
    required int id,
    required String badge,
    required int price,
    required String providerName,
    required String company,
    required Map<String, dynamic> depature,
    required Map<String, dynamic> arrival,
    required bool hasTransfer,
    required bool hasVisaTransfer,
    required Map<String, dynamic> luggage,
    required Map<String, dynamic> handLuggage,
    required bool isReturnable,
    required bool isExchangable,
  }) = _TicketEntity;
}
