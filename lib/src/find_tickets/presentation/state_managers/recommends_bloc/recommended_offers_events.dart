part of 'recommended_offers_bloc.dart';

sealed class RecommendedOffersEvent extends Equatable {
  const RecommendedOffersEvent();
}
/// The Event for getting a list of recommended tickets by 'Music Fly Program'
final class GetRecommednedOffersEvent extends RecommendedOffersEvent {
  @override
  List<Object?> get props => [];
}
