import 'package:mad_test_work/core/converters/converter.dart';
import 'package:mad_test_work/src/find_tickets/data/model/recommended_offer_dto.dart';
import 'package:mad_test_work/src/find_tickets/domain/entities/recommended_offer_entity.dart';

typedef IRecommendedOfferConverter = Converter<RecommendedOfferEntity, RecommendedOfferDTO>;

final class RecommendedOfferConverter extends IRecommendedOfferConverter {
  const RecommendedOfferConverter();
  
  @override
  RecommendedOfferEntity convert(RecommendedOfferDTO input) {
    return RecommendedOfferEntity(
      id: input.id,
      city: input.city,
      title: input.title,
      price: input.price,
    );
  }
}
