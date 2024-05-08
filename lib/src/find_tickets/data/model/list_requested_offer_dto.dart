import 'package:effective_test_work/src/find_tickets/data/model/i_list_dto.dart';
import 'package:effective_test_work/src/find_tickets/data/model/requested_offer_dto.dart';
import 'package:json_annotation/json_annotation.dart';

part 'list_requested_offer_dto.g.dart';

@JsonSerializable(createJsonKeys: true)
class ListRequestedOfferDTO implements IListDto<RequestedOfferDTO> {
  @JsonKey(name: 'tickets_offers')
  final List<RequestedOfferDTO> ticketOffers;

  const ListRequestedOfferDTO({required this.ticketOffers});

  factory ListRequestedOfferDTO.fromJson(Map<String, dynamic> json) =>
      _$ListRequestedOfferDTOFromJson(json);

  Map<String, dynamic> toJson() => _$ListRequestedOfferDTOToJson(this);

  @override
  List<RequestedOfferDTO> getOffers() => ticketOffers;
}
