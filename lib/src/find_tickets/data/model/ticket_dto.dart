import 'package:json_annotation/json_annotation.dart';

part 'ticket_dto.g.dart';


@JsonSerializable(createJsonKeys: true)
class TicketDTO {
  final int id;
  final String badge;
  final int price;
  @JsonKey(name: 'provider_name')
  final String providerName;
  final String company;
  final Map<String, dynamic> depature;
  final Map<String, dynamic> arrival;
  @JsonKey(name: 'has_transfer')
  final bool hasTransfer;
  @JsonKey(name: 'has_visa_transfer')
  final bool hasVisaTransfer;
  final Map<String, dynamic> luggage;
  @JsonKey(name: 'hand_luggage')
  final Map<String, dynamic> handLuggage;
  @JsonKey(name: 'is_returnable')
  final bool isReturnable;
  @JsonKey(name: 'is_exchangable')
  final bool isExchangable;
  const TicketDTO({
    required this.id,
    required this.badge,
    required this.price,
    required this.providerName,
    required this.company,
    required this.depature,
    required this.arrival,
    required this.hasTransfer,
    required this.hasVisaTransfer,
    required this.luggage,
    required this.handLuggage,
    required this.isReturnable,
    required this.isExchangable,
  });

  factory TicketDTO.fromJson(Map<String, dynamic> json) => _$TicketDTOFromJson(json);

  Map<String, dynamic> toJson() => _$TicketDTOToJson(this);
}
