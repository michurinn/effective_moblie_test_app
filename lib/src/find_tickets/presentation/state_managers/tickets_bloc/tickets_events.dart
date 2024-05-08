part of 'tickets_bloc.dart';

sealed class TicketsEvent extends Equatable {
  const TicketsEvent();
}

final class GetTicketsEvent extends TicketsEvent {
  @override
  List<Object?> get props => [];
}
