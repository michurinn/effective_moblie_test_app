import 'package:json_annotation/json_annotation.dart';

part 'ticket_dto.g.dart';

@JsonSerializable(createJsonKeys: true)
class TicketDTO {
  final int id;
  final String? badge;
  @JsonKey(fromJson: priceFromJson)
  final int price;
  @JsonKey(name: 'provider_name')
  final String providerName;
  final String company;
  @JsonKey(name: 'departure')
  final Map<String, dynamic> departure;
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
    required this.departure,
    required this.arrival,
    required this.hasTransfer,
    required this.hasVisaTransfer,
    required this.luggage,
    required this.handLuggage,
    required this.isReturnable,
    required this.isExchangable,
  });

  static int priceFromJson(Map<String, dynamic> price) {
    return price['value'] as int;
  }

  factory TicketDTO.fromJson(Map<String, dynamic> json) =>
      _$TicketDTOFromJson(json);

  Map<String, dynamic> toJson() => _$TicketDTOToJson(this);

  @override
  String toString() {
    return [
      id,
      badge,
      price,
      providerName,
      company,
      departure,
      arrival,
      hasTransfer,
      hasVisaTransfer,
      luggage,
      handLuggage,
      isReturnable,
      isExchangable
    ]
        .map(
          (e) => 'e\n',
        )
        .toString();
  }
}
