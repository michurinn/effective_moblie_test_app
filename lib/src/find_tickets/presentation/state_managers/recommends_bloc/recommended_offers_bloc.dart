// ignore_for_file: library_private_types_in_public_api, constant_identifier_names

import 'dart:async';

// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:equatable/equatable.dart';
import 'package:effective_test_work/core/architecture/domain/entity/result.dart';
import 'package:effective_test_work/core/failtures/failures.dart';
import 'package:effective_test_work/src/find_tickets/domain/entities/recommended_offer_entity.dart';
import 'package:effective_test_work/src/find_tickets/domain/repositories/i_recommends_repository.dart';

part 'recommended_offers_events.dart';
part 'recommended_offers_state.dart';

const String SERVER_FAILURE_MESSAGE = 'Server Failure';

class RecommendedOffersBloc
    extends Bloc<RecommendedOffersEvent, RecommendedOffersState> {
  final IRecommendedRepository recommendedRepository;

  RecommendedOffersBloc({
    required this.recommendedRepository,
  }) : super(Empty()) {
    on<RecommendedOffersEvent>((event, emitter) async {
      await switch (event) {
        RecommendedOffersEvent() => getRecommededOffers(event, emitter),
      };
      // ignore: unused_label
      transformer:
      sequential();
    });
  }

  RecommendedOffersState get initialState => Empty();

  Future<void> getRecommededOffers(RecommendedOffersEvent event,
      Emitter<RecommendedOffersState> emitter) async {
    emitter(
      Loading(),
    );
    final result = await recommendedRepository.getRecommendedTickets();
    final state = switch (result) {
      // Takes first 3 items
      ResultOk<List<RecommendedOfferEntity>, Failure>() =>
        Loaded(result.data.take(3).toList()),
      ResultFailed<List<RecommendedOfferEntity>, Failure>() =>
        Error(SERVER_FAILURE_MESSAGE),
    };
    emitter(state);
  }
}
