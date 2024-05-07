import 'package:json_annotation/json_annotation.dart';

part 'requested_offer_dto.g.dart';

@JsonSerializable(createJsonKeys:true)
class RequestedOfferDTO {
  final int id;
  final String title;
  final int price;
  @JsonKey(name: 'time_range')
  final List<String> timeRange;
  const RequestedOfferDTO({
    required this.id,
    required this.title,
    required this.price,
    required this.timeRange,
  });

  factory RequestedOfferDTO.fromJson(Map<String, dynamic> json) => _$RequestedOfferDTOFromJson(json);

  Map<String, dynamic> toJson() => _$RequestedOfferDTOToJson(this);
  
}
