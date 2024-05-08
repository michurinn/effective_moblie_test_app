import 'package:json_annotation/json_annotation.dart';

part 'requested_offer_dto.g.dart';

@JsonSerializable(createJsonKeys: true)
class RequestedOfferDTO {
  final int id;
  final String title;
  @JsonKey(fromJson: priceFromJson)
  final int price;
  @JsonKey(name: 'time_range')
  final List<String> timeRange;
  const RequestedOfferDTO({
    required this.id,
    required this.title,
    required this.price,
    required this.timeRange,
  });

  static int priceFromJson(Map<String, dynamic> price) {
    return price['value'] as int;
  }

  factory RequestedOfferDTO.fromJson(Map<String, dynamic> json) =>
      _$RequestedOfferDTOFromJson(json);

  Map<String, dynamic> toJson() => _$RequestedOfferDTOToJson(this);
}
