part of 'tickets_bloc.dart';

sealed class TicketsEvent extends Equatable {
  const TicketsEvent();
}
/// The Умуте for getting a list of all available tickets 
final class GetTicketsEvent extends TicketsEvent {
  @override
  List<Object?> get props => [];
}
