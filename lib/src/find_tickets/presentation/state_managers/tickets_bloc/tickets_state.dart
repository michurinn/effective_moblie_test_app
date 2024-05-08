part of 'tickets_bloc.dart';

sealed class TicketsState extends Equatable {}

final class Empty extends TicketsState {
  Empty();

  @override
  List<Object?> get props => [];
}

final class Loading extends TicketsState {
  Loading();

  @override
  List<Object?> get props => [];
}

final class Loaded extends TicketsState {
  final List<TicketEntity> offers;

  Loaded(
    this.offers,
  );

  @override
  List<Object?> get props => [];
}

final class Error extends TicketsState {
  final String message;

  Error(this.message);

  @override
  List<Object?> get props => [];
}
