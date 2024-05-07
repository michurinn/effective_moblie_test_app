import 'package:flutter_test/flutter_test.dart';
import 'package:effective_test_work/src/find_tickets/data/model/recommended_offer_dto.dart';
import 'package:effective_test_work/src/find_tickets/domain/converters/recommended_offer_converter.dart';
import 'package:effective_test_work/src/find_tickets/domain/entities/recommended_offer_entity.dart';

void main() {
  late IRecommendedOfferConverter ticketConverter;
  const int id = 1;
  const String city = 'city';
  const String title = 'title';
  const int price = 666;
  late RecommendedOfferDTO dto;
  late RecommendedOfferEntity entity;
  setUp(() {
    ticketConverter = const RecommendedOfferConverter();
    dto = const RecommendedOfferDTO(
      id: id,
      price: price,
      title: title,
      city: city,
    );
    entity =  const RecommendedOfferEntity(
      id: id,
      price: price,
      title: title,
      city: city,
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
