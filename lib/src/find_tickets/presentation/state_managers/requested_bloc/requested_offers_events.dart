part of 'requested_offers_bloc.dart';

sealed class RequestedOffersEvent extends Equatable {
  const RequestedOffersEvent();
}

final class GetRequestedOffersEvent extends RequestedOffersEvent {
  @override
  List<Object?> get props => [];
}
