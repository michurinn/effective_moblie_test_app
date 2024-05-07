import 'package:effective_test_work/core/converters/converter.dart';
import 'package:effective_test_work/src/find_tickets/data/model/requested_offer_dto.dart';
import 'package:effective_test_work/src/find_tickets/domain/entities/requested_offer_entity.dart';

typedef IRequestedOfferConverter
    = Converter<RequestedOfferEntity, RequestedOfferDTO>;

final class RequestedOfferConverter extends IRequestedOfferConverter {
  const RequestedOfferConverter();

  @override
  RequestedOfferEntity convert(RequestedOfferDTO input) {
    return RequestedOfferEntity(
      id: input.id,
      title: input.title,
      price: input.price,
      timeRange: input.timeRange,
    );
  }
}
