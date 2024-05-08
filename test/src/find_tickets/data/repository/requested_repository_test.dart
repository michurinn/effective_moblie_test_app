import 'package:effective_test_work/src/find_tickets/data/model/list_requested_offer_dto.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:effective_test_work/api/tickets_api.dart';
import 'package:effective_test_work/core/architecture/domain/entity/result.dart';
import 'package:effective_test_work/src/find_tickets/data/repository/requested_repostory.dart';
import 'package:effective_test_work/src/find_tickets/domain/converters/requested_offer_converter.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'requested_repository_test.mocks.dart';

@GenerateMocks([IRequestedOfferConverter, ITicketsApi])
void main() {
  late MockIRequestedOfferConverter converter;
  late MockITicketsApi ticketsApi;
  late RequestedRepository requestedRepository;
  setUp(() {
    converter = MockIRequestedOfferConverter();
    ticketsApi = MockITicketsApi();
    requestedRepository = RequestedRepository(
      converter: converter,
      ticketsApi: ticketsApi,
    );
  });

  group('Converter throw an exception', () {
    setUp(() {
      when(converter.convertMultiple(any)).thenThrow(Exception());
    });
    test('Should return Result.fail if Api throws exception', () async {
      // Arrange
      when(ticketsApi.getRequestedTickets()).thenThrow(Exception());
      // Act
      final result = await requestedRepository.getRequestedTickets();
      // Assert
      verify(ticketsApi.getRequestedTickets());
      expect(result, isA<ResultFailed>());
    });

    test('Should return Result.fail if Api returns result', () async {
      // Arrange
      when(ticketsApi.getRequestedTickets()).thenAnswer((realInvocation) =>
          Future.value(ListRequestedOfferDTO(ticketOffers: [])));
      // Act
      final result = await requestedRepository.getRequestedTickets();
      // Assert
      verify(ticketsApi.getRequestedTickets());
      expect(result, isA<ResultFailed>());
    });
  });

  group('Converter returns a result', () {
    setUp(() {
      when(converter.convertMultiple(any)).thenReturn([]);
    });
    test('Should return Result.fail if Api throws exception', () async {
      // Arrange
      when(ticketsApi.getRequestedTickets()).thenThrow(Exception());
      // Act
      final result = await requestedRepository.getRequestedTickets();
      // Assert
      verify(ticketsApi.getRequestedTickets());
      expect(result, isA<ResultFailed>());
    });

    test('Should return Result.fail if Api returns result', () async {
      // Arrange
      when(ticketsApi.getRequestedTickets()).thenAnswer(
          (_) => Future.value(ListRequestedOfferDTO(ticketOffers: [])));
      // Act
      final result = await requestedRepository.getRequestedTickets();
      // Assert
      verify(ticketsApi.getRequestedTickets());
      expect(result, isA<ResultOk>());
    });
  });
}
