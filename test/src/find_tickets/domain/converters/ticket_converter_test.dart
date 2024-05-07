import 'package:flutter_test/flutter_test.dart';
import 'package:mad_test_work/core/converters/converter.dart';
import 'package:mad_test_work/src/find_tickets/data/model/ticket_dto.dart';
import 'package:mad_test_work/src/find_tickets/domain/converters/ticket_converter.dart';
import 'package:mad_test_work/src/find_tickets/domain/entities/ticket_entity.dart';

void main() {
  late Converter<TicketEntity, TicketDTO> ticketConverter;
  const int id = 0;
  const String badge = 'badge';
  const int price = 666;
  const String providerName = 'provider';
  const String company = 'company';
  final Map<String, dynamic> depatureDto = {};
  final Map<String, dynamic> arrivalDto = {};
  const bool hasTransfer = true;
  const bool hasVisaTransfer = true;
  final Map<String, dynamic> luggageDto = {};
  final Map<String, dynamic> handLuggageDto = {};
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
      depature: depatureDto,
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
      depature: depatureDto,
      arrival: arrivalDto,
      hasTransfer: hasTransfer,
      hasVisaTransfer: hasVisaTransfer,
      luggage: luggageDto,
      handLuggage: handLuggageDto,
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
