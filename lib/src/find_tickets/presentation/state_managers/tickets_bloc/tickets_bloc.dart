// ignore_for_file: library_private_types_in_public_api, constant_identifier_names

import 'dart:async';

// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:effective_test_work/core/architecture/domain/entity/result.dart';
import 'package:effective_test_work/core/failtures/failures.dart';
import 'package:effective_test_work/src/find_tickets/domain/entities/ticket_entity.dart';
import 'package:effective_test_work/src/find_tickets/domain/repositories/i_tickets_repository.dart';
import 'package:equatable/equatable.dart';

part 'tickets_events.dart';
part 'tickets_state.dart';

const String SERVER_FAILURE_MESSAGE = 'Server Failure';

class TicketsBloc
    extends Bloc<TicketsEvent, TicketsState> {
  final ITicketsRepository ticketsRepository;

  TicketsBloc({
    required this.ticketsRepository,
  }) : super(Empty()) {
    on<TicketsEvent>((event, emitter) async {
      await switch (event) {
        TicketsEvent() => getRecommededOffers(event, emitter),
      };
      // ignore: unused_label
      transformer:
      sequential();
    });
  }

  TicketsState get initialState => Empty();

  Future<void> getRecommededOffers(TicketsEvent event,
      Emitter<TicketsState> emitter) async {
    emitter(
      Loading(),
    );
    final result = await ticketsRepository.getTickets();
    final state = switch (result) {
      ResultOk<List<TicketEntity>, Failure>() => Loaded(result.data),
      ResultFailed<List<TicketEntity>, Failure>() =>
        Error(SERVER_FAILURE_MESSAGE),
    };
    emitter(state);
  }
}
