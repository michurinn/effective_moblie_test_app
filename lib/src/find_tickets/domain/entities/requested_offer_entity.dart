import 'package:freezed_annotation/freezed_annotation.dart';

part 'requested_offer_entity.freezed.dart';


@freezed
class RequestedOfferEntity with _$RequestedOfferEntity {
  const factory RequestedOfferEntity({
    required int id,
    required String title,
    required int price,
    required List<String> timeRange
  }) = _RequestedOfferEntity;
}