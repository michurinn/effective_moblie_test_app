import 'package:effective_test_work/src/find_tickets/data/model/i_list_dto.dart';
import 'package:effective_test_work/src/find_tickets/data/model/recommended_offer_dto.dart';
import 'package:json_annotation/json_annotation.dart';

part 'list_recommended_offer_dto.g.dart';

@JsonSerializable(createJsonKeys: true)
class ListRecommendedOfferDTO implements IListDto<RecommendedOfferDTO> {
  @JsonKey(name: 'offers')
  final List<RecommendedOfferDTO> offers;

  const ListRecommendedOfferDTO({required this.offers});

  factory ListRecommendedOfferDTO.fromJson(Map<String, dynamic> json) =>
      _$ListRecommendedOfferDTOFromJson(json);

  Map<String, dynamic> toJson() => _$ListRecommendedOfferDTOToJson(this);

  @override
  List<RecommendedOfferDTO> getOffers() => offers;
}
