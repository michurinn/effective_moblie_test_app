part of 'recommended_offers_bloc.dart';

sealed class RecommendedOffersEvent extends Equatable {
  const RecommendedOffersEvent();
}

final class GetRecommednedOffersEvent extends RecommendedOffersEvent {
  @override
  List<Object?> get props => [];
}
