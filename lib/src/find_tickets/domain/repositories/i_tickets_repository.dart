import 'package:mad_test_work/core/architecture/domain/entity/request_operation.dart';
import 'package:mad_test_work/src/find_tickets/domain/entities/ticket_entity.dart';

abstract interface class ITicketsRepository {
  RequestOperation<List<TicketEntity>> getTickets();
}
