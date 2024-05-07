part of 'recommended_offers_bloc.dart';

sealed class RecommendedOffersState extends Equatable {}

final class Empty extends RecommendedOffersState {
  Empty();

  @override
  List<Object?> get props => [];
}

final class Loading extends RecommendedOffersState {
  Loading();

  @override
  List<Object?> get props => [];
}

final class Loaded extends RecommendedOffersState {
  final List<RecommendedOfferEntity> offers;

  Loaded(
    this.offers,
  );

  @override
  List<Object?> get props => [];
}

final class Error extends RecommendedOffersState {
  final String message;

  Error(this.message);

  @override
  List<Object?> get props => [];
}
