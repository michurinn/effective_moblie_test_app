import 'package:effective_test_work/core/converters/converter.dart';
import 'package:effective_test_work/src/find_tickets/data/model/ticket_dto.dart';
import 'package:effective_test_work/src/find_tickets/domain/entities/depature_arrival_place_entity.dart';
import 'package:effective_test_work/src/find_tickets/domain/entities/hand_luggage_entity.dart';
import 'package:effective_test_work/src/find_tickets/domain/entities/luggage_entity.dart';
import 'package:effective_test_work/src/find_tickets/domain/entities/ticket_entity.dart';

typedef ITicketConverter = Converter<TicketEntity, TicketDTO>;

class TicketConverter extends ITicketConverter {
  const TicketConverter();

  @override
  TicketEntity convert(TicketDTO input) {
    return TicketEntity(
      id: input.id,
      badge: input.badge,
      price: input.price,
      providerName: input.providerName,
      company: input.company,
      departure: DepatureArrivalPlaceEntity.fromMap(input.departure),
      arrival: DepatureArrivalPlaceEntity.fromMap(input.arrival),
      hasTransfer: input.hasTransfer,
      hasVisaTransfer: input.hasVisaTransfer,
      luggage: LuggageEntity.fromMap(input.luggage),
      handLuggage: HandLuggageEntity.fromMap(input.handLuggage),
      isReturnable: true,
      isExchangable: true,
    );
  }
}
