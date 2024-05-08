import 'package:effective_test_work/src/find_tickets/data/model/i_list_dto.dart';
import 'package:effective_test_work/src/find_tickets/data/model/ticket_dto.dart';
import 'package:json_annotation/json_annotation.dart';

part 'list_tickets_dto.g.dart';

@JsonSerializable(createJsonKeys: true)
class ListTicketsDTO implements IListDto<TicketDTO> {
  @JsonKey(name: 'tickets')
  final List<TicketDTO> tickets;

  const ListTicketsDTO({required this.tickets});

  factory ListTicketsDTO.fromJson(Map<String, dynamic> json) =>
      _$ListTicketsDTOFromJson(json);

  Map<String, dynamic> toJson() => _$ListTicketsDTOToJson(this);
  
  @override
  List<TicketDTO> getOffers() {
   return tickets;
  }
}
