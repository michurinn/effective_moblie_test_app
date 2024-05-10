// ignore_for_file: library_private_types_in_public_api, constant_identifier_names

import 'dart:async';

// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:effective_test_work/core/architecture/domain/entity/result.dart';
import 'package:effective_test_work/core/failtures/failures.dart';
import 'package:effective_test_work/src/find_tickets/domain/entities/requested_offer_entity.dart';
import 'package:effective_test_work/src/find_tickets/domain/repositories/i_requested_repository.dart';
import 'package:equatable/equatable.dart';

part 'requested_offers_events.dart';
part 'requested_offers_state.dart';

const String SERVER_FAILURE_MESSAGE = 'Server Failure';

/// The BLoC for getting a list of 3 recommended tickets
class RequestedOffersBloc
    extends Bloc<RequestedOffersEvent, RequestedOffersState> {
  final IRequestedRepository requestedRepository;

  RequestedOffersBloc({
    required this.requestedRepository,
  }) : super(Empty()) {
    on<RequestedOffersEvent>((event, emitter) async {
      await switch (event) {
        RequestedOffersEvent() => getRecommededOffers(event, emitter),
      };
      // ignore: unused_label
      transformer:
      sequential();
    });
  }

  RequestedOffersState get initialState => Empty();

  /// The method for getting a list of 3 recommended tickets
  Future<void> getRecommededOffers(
      RequestedOffersEvent event, Emitter<RequestedOffersState> emitter) async {
    emitter(
      Loading(),
    );
    final result = await requestedRepository.getRequestedTickets();
    final state = switch (result) {
      ResultOk<List<RequestedOfferEntity>, Failure>() => Loaded(result.data),
      ResultFailed<List<RequestedOfferEntity>, Failure>() =>
        Error(SERVER_FAILURE_MESSAGE),
    };
    emitter(state);
  }
}
