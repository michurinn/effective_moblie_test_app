import 'package:mad_test_work/api/tickets_api.dart';
import 'package:mad_test_work/core/architecture/domain/entity/request_operation.dart';
import 'package:mad_test_work/core/architecture/domain/entity/result.dart';
import 'package:mad_test_work/core/failtures/failures.dart';
import 'package:mad_test_work/src/find_tickets/domain/converters/recommended_offer_converter.dart';
import 'package:mad_test_work/src/find_tickets/domain/entities/recommended_offer_entity.dart';
import 'package:mad_test_work/src/find_tickets/domain/repositories/i_recommends_repository.dart';

class RecommendedRepository implements IRecommendedRepository {
  final IRecommendedOfferConverter converter;
  final ITicketsApi ticketsApi;

  RecommendedRepository({
    required this.ticketsApi,
    required this.converter,
  });

  @override
  RequestOperation<List<RecommendedOfferEntity>> getRecommendedTickets() async {
    try {
      final result = await ticketsApi.getRecommendedTickets();
      return Result.ok(converter.convertMultiple(result).toList());
    } on Exception catch (_) {
      return Result.failed(ServerFailure());
    }
  }
}
