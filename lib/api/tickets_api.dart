import 'package:dio/dio.dart';
import 'package:mad_test_work/src/find_tickets/data/model/recommended_offer_dto.dart';
import 'package:mad_test_work/src/find_tickets/data/model/requested_offer_dto.dart';
import 'package:mad_test_work/src/find_tickets/data/model/ticket_dto.dart';
import 'package:retrofit/retrofit.dart';

part 'tickets_api.g.dart';

@RestApi(baseUrl: 'https://run.mocky.io/v3/')
abstract class ITicketsApi {
  factory ITicketsApi(
    Dio dio, {
    String baseUrl,
  }) = _ITicketsApi;
  @GET('2dbc0999-86bf-4c08-8671-bac4b7a5f7eb')
  Future<List<TicketDTO>> getTickets([@Query('format') String format = 'json']);
  @GET('00727197-24ae-48a0-bcb3-63eb35d7a9de')
  Future<List<RecommendedOfferDTO>> getRecommendedTickets(
      [@Query('format') String format = 'json']);
  @GET('3424132d-a51a-4613-b6c9-42b2d214f35f')
  Future<List<RequestedOfferDTO>> getRequestedTickets(
      [@Query('format') String format = 'json']);
}
