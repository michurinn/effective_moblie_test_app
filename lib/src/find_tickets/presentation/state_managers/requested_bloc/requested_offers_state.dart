part of 'requested_offers_bloc.dart';

sealed class RequestedOffersState extends Equatable {}

final class Empty extends RequestedOffersState {
  Empty();

  @override
  List<Object?> get props => [];
}

final class Loading extends RequestedOffersState {
  Loading();

  @override
  List<Object?> get props => [];
}

final class Loaded extends RequestedOffersState {
  final List<RequestedOfferEntity> offers;

  Loaded(
    this.offers,
  );

  @override
  List<Object?> get props => [];
}

final class Error extends RequestedOffersState {
  final String message;

  Error(this.message);

  @override
  List<Object?> get props => [];
}
