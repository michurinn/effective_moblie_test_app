import 'package:mad_test_work/api/tickets_api.dart';
import 'package:mad_test_work/core/architecture/domain/entity/request_operation.dart';
import 'package:mad_test_work/core/architecture/domain/entity/result.dart';
import 'package:mad_test_work/core/failtures/failures.dart';
import 'package:mad_test_work/src/find_tickets/domain/converters/requested_offer_converter.dart';
import 'package:mad_test_work/src/find_tickets/domain/entities/requested_offer_entity.dart';
import 'package:mad_test_work/src/find_tickets/domain/repositories/i_requested_repository.dart';

class RequestedRepository implements IRequestedRepository {
  final IRequestedOfferConverter converter;
  final ITicketsApi ticketsApi;

  RequestedRepository({
    required this.ticketsApi,
    required this.converter,
  });

  @override
  RequestOperation<List<RequestedOfferEntity>> getRequestedTickets() async {
    try {
      final result = await ticketsApi.getRequestedTickets();
      return Result.ok(converter.convertMultiple(result).toList());
    } on Exception catch (_) {
      return Result.failed(ServerFailure());
    }
  }
}
