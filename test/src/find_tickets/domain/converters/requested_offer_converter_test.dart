import 'package:flutter_test/flutter_test.dart';
import 'package:mad_test_work/src/find_tickets/data/model/requested_offer_dto.dart';
import 'package:mad_test_work/src/find_tickets/domain/converters/requested_offer_converter.dart';
import 'package:mad_test_work/src/find_tickets/domain/entities/requested_offer_entity.dart';

void main() {
  late IRequestedOfferConverter ticketConverter;
  const int id = 1;
  const List<String> timeRange = ['7:00','9:00'];
  const String title = 'title';
  const int price = 666;
  late RequestedOfferDTO dto;
  late RequestedOfferEntity entity;
  setUp(() {
    ticketConverter = const RequestedOfferConverter();
    dto = const RequestedOfferDTO(
      id: id,
      price: price,
      title: title,
      timeRange: timeRange,
    );
    entity =   const RequestedOfferEntity(
      id: id,
      price: price,
      title: title,
      timeRange: timeRange,
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
