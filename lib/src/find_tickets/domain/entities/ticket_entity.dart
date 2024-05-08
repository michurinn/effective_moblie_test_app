import 'package:effective_test_work/src/find_tickets/domain/entities/depature_arrival_place_entity.dart';
import 'package:effective_test_work/src/find_tickets/domain/entities/hand_luggage_entity.dart';
import 'package:effective_test_work/src/find_tickets/domain/entities/luggage_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ticket_entity.freezed.dart';

@freezed
class TicketEntity with _$TicketEntity {
  const factory TicketEntity({
    required int id,
    required String? badge,
    required int price,
    required String providerName,
    required String company,
    required DepatureArrivalPlaceEntity departure,
    required DepatureArrivalPlaceEntity arrival,
    required bool hasTransfer,
    required bool hasVisaTransfer,
    required LuggageEntity luggage,
    required HandLuggageEntity handLuggage,
    required bool isReturnable,
    required bool isExchangable,
  }) = _TicketEntity;
}
