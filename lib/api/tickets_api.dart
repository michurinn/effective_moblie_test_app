import 'package:dio/dio.dart';
import 'package:effective_test_work/src/find_tickets/data/model/list_recommended_offer_dto.dart';
import 'package:effective_test_work/src/find_tickets/data/model/list_requested_offer_dto.dart';
import 'package:effective_test_work/src/find_tickets/data/model/list_tickets_dto.dart';
import 'package:retrofit/retrofit.dart';

part 'tickets_api.g.dart';

@RestApi(baseUrl: 'https://run.mocky.io/v3/')
abstract class ITicketsApi {
  factory ITicketsApi(
    Dio dio, {
    String baseUrl,
  }) = _ITicketsApi;
  /// Get all tickets for the page with all tickets
  @GET('2dbc0999-86bf-4c08-8671-bac4b7a5f7eb')
  Future<ListTicketsDTO> getTickets();
  /// Get recommends for 'Music fly'
  @GET('00727197-24ae-48a0-bcb3-63eb35d7a9de')
  Future<ListRecommendedOfferDTO> getRecommendedTickets();
  /// Get recommended offers for the page with settings
  @GET('3424132d-a51a-4613-b6c9-42b2d214f35f')
  Future<ListRequestedOfferDTO> getRequestedTickets();
}
