import 'package:effective_test_work/core/enums/airports.dart';
import 'package:effective_test_work/src/find_tickets/domain/entities/depature_arrival_place_entity.dart';
import 'package:effective_test_work/src/find_tickets/domain/entities/hand_luggage_entity.dart';
import 'package:effective_test_work/src/find_tickets/domain/entities/luggage_entity.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:effective_test_work/core/converters/converter.dart';
import 'package:effective_test_work/src/find_tickets/data/model/ticket_dto.dart';
import 'package:effective_test_work/src/find_tickets/domain/converters/ticket_converter.dart';
import 'package:effective_test_work/src/find_tickets/domain/entities/ticket_entity.dart';

void main() {
  late Converter<TicketEntity, TicketDTO> ticketConverter;
  const int id = 0;
  const String badge = 'badge';
  const int price = 666;
  const String providerName = 'provider';
  const String company = 'company';
  final Map<String, dynamic> depatureDto = {
    "town": "Сочи",
    "date": "2024-02-24T00:20:00",
    "airport": "AER"
  };
  final Map<String, dynamic> arrivalDto = {
    "town": "Сочи",
    "date": "2024-02-24T00:20:00",
    "airport": "AER"
  };
  const bool hasTransfer = true;
  const bool hasVisaTransfer = true;
  final Map<String, dynamic> luggageDto = {
    "has_luggage": false,
    "price": {"value": 5999}
  };
  final Map<String, dynamic> handLuggageDto = {"has_hand_luggage": false};
  late TicketDTO dto;
  late TicketEntity entity;
  setUp(() {
    ticketConverter = const TicketConverter();
    dto = TicketDTO(
      id: id,
      badge: badge,
      price: price,
      providerName: providerName,
      company: company,
      departure: depatureDto,
      arrival: arrivalDto,
      hasTransfer: hasTransfer,
      hasVisaTransfer: hasVisaTransfer,
      luggage: luggageDto,
      handLuggage: handLuggageDto,
      isReturnable: true,
      isExchangable: true,
    );
    entity = TicketEntity(
      id: id,
      badge: badge,
      price: price,
      providerName: providerName,
      company: company,
      departure: DepatureArrivalPlaceEntity.fromMap(depatureDto),
      arrival: DepatureArrivalPlaceEntity.fromMap(arrivalDto),
      hasTransfer: hasTransfer,
      hasVisaTransfer: hasVisaTransfer,
      luggage: LuggageEntity.fromMap(luggageDto),
      handLuggage: HandLuggageEntity(hasHandLuggage: false),
      isReturnable: true,
      isExchangable: true,
    );
  });
  group('Converter', () {
    test('Should rightly convert from Dto to Entity', () {
      // Arrange
      // Act
      final convertedDto = ticketConverter.convert(dto);
      // Assert
      expect(convertedDto, equals(entity));
    });
  });
}
