import 'package:effective_test_work/api/tickets_api.dart';
import 'package:effective_test_work/core/architecture/domain/entity/request_operation.dart';
import 'package:effective_test_work/core/architecture/domain/entity/result.dart';
import 'package:effective_test_work/core/failtures/failures.dart';
import 'package:effective_test_work/src/find_tickets/domain/converters/ticket_converter.dart';
import 'package:effective_test_work/src/find_tickets/domain/entities/ticket_entity.dart';
import 'package:effective_test_work/src/find_tickets/domain/repositories/i_tickets_repository.dart';

final class TicketsRepository implements ITicketsRepository {
  final ITicketConverter ticketsConverter;
  final ITicketsApi ticketsApi;

  TicketsRepository({
    required this.ticketsConverter,
    required this.ticketsApi,
  });

  @override
  RequestOperation<List<TicketEntity>> getTickets() async {
    try {
      final result = await ticketsApi.getTickets();
      final convertedValue = ticketsConverter.convertMultiple(result).toList();
      return Result.ok(convertedValue);
    } catch (_) {
      return Result.failed(ServerFailure());
    }
  }
}
