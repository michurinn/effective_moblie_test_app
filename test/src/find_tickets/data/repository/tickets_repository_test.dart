import 'package:flutter_test/flutter_test.dart';
import 'package:mad_test_work/api/tickets_api.dart';
import 'package:mad_test_work/core/architecture/domain/entity/result.dart';
import 'package:mad_test_work/core/failtures/failures.dart';
import 'package:mad_test_work/src/find_tickets/data/repository/tickets_repository.dart';
import 'package:mockito/annotations.dart';
import 'package:mad_test_work/src/find_tickets/data/model/ticket_dto.dart';
import 'package:mad_test_work/src/find_tickets/domain/converters/ticket_converter.dart';
import 'package:mad_test_work/src/find_tickets/domain/entities/ticket_entity.dart';
import 'package:mockito/mockito.dart';

import 'tickets_repository_test.mocks.dart';

@GenerateMocks([TicketConverter, ITicketsApi])
void main() {
  late MockTicketConverter ticketConverter;
  late MockITicketsApi ticketsApi;
  late TicketsRepository ticketsRepository;
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
    ticketsApi = MockITicketsApi();
    ticketConverter = MockTicketConverter();
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
    ticketsRepository = TicketsRepository(
      ticketsApi: ticketsApi,
      ticketsConverter: ticketConverter,
    );
  });
  group('Tickets repository', () {
    test('Should return Result.ok if Api doesn\'t throw an Exception',
        () async {
      // Arrange
      when(ticketsApi.getTickets()).thenAnswer((_) => Future.value([dto]));
      when(ticketConverter.convertMultiple(any)).thenAnswer((_) => [entity]);
      // Act
      final result = await ticketsRepository.getTickets();
      final mockResult = Result.ok([entity]);
      // Assert
      expect(result, isA<ResultOk>());
      expect((result as ResultOk).data, equals((mockResult as ResultOk).data));
    });

    test('Should return Result.fail if Api throw an Exception', () async {
      // Arrange
      when(ticketsApi.getTickets()).thenThrow(Exception());
      when(ticketConverter.convertMultiple(any)).thenAnswer((_) => [entity]);
      // Act
      final result = await ticketsRepository.getTickets();
      final mockResult = ServerFailure();
      // Assert
      expect(result, isA<ResultFailed>());
      expect((result as ResultFailed).failure, equals(mockResult));
    });
  });
}
