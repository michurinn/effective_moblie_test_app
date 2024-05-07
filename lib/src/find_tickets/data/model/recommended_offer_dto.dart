import 'package:json_annotation/json_annotation.dart';

part 'recommended_offer_dto.g.dart';

@JsonSerializable(createJsonKeys: true)
class RecommendedOfferDTO {
  final int id;
  @JsonKey(name: 'town')
  final String city;
  final String title;
  @JsonKey(fromJson: priceFromJson)
  final int price;
  const RecommendedOfferDTO({
    required this.id,
    required this.title,
    required this.price,
    required this.city,
  });

  static int priceFromJson(Map<String, dynamic> price) {
    return price['value'] as int;
  }

  factory RecommendedOfferDTO.fromJson(Map<String, dynamic> json) =>
      _$RecommendedOfferDTOFromJson(json);

  Map<String, dynamic> toJson() => _$RecommendedOfferDTOToJson(this);
}
