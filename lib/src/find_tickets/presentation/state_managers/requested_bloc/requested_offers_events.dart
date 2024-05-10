part of 'requested_offers_bloc.dart';

sealed class RequestedOffersEvent extends Equatable {
  const RequestedOffersEvent();
}
/// The event for getting a list of 3 recommended tickets
final class GetRequestedOffersEvent extends RequestedOffersEvent {
  @override
  List<Object?> get props => [];
}
