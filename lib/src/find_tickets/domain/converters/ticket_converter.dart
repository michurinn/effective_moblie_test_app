import 'package:effective_test_work/core/converters/converter.dart';
import 'package:effective_test_work/src/find_tickets/data/model/ticket_dto.dart';
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
      depature: input.depature,
      arrival: input.arrival,
      hasTransfer: input.hasTransfer,
      hasVisaTransfer: input.hasVisaTransfer,
      luggage: input.luggage,
      handLuggage: input.handLuggage,
      isReturnable: true,
      isExchangable: true,
    );
  }
}
