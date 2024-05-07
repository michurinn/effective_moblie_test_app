import 'package:flutter_test/flutter_test.dart';
import 'package:mad_test_work/core/architecture/domain/entity/result.dart';
import 'package:mad_test_work/core/failtures/failures.dart';
import 'package:mad_test_work/src/find_tickets/domain/entities/recommended_offer_entity.dart';
import 'package:mad_test_work/src/find_tickets/domain/repositories/i_recommends_repository.dart';
import 'package:mad_test_work/src/find_tickets/presentation/state_managers/recommends_bloc/recommended_offers_bloc.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'recommended_offers_bloc_test.mocks.dart';

@GenerateMocks([IRecommendedRepository])
void main() {
  provideDummy<Result<List<RecommendedOfferEntity>, Failure>>(
      const ResultOk<List<RecommendedOfferEntity>, Failure>([]));
  late RecommendedOffersBloc recommendedOffersBloc;
  late MockIRecommendedRepository mockIRecommendedRepository;
  late List<RecommendedOfferEntity> data;
  setUp(() {
    data = [];
    mockIRecommendedRepository = MockIRecommendedRepository();
    recommendedOffersBloc = RecommendedOffersBloc(
        recommendedRepository: mockIRecommendedRepository);
  });

  group('RecommendedOffersBloc', () {
    test('initialState should be Empty', () {
      // assert
      expect(recommendedOffersBloc.initialState, equals(Empty()));
    });

    test('should call Repo method', () async {
      // arrange
      when(mockIRecommendedRepository.getRecommendedTickets())
          .thenAnswer((realInvocation) => Future.value(ResultOk(data)));

      // act
      recommendedOffersBloc.add(GetRecommednedOffersEvent());
      await untilCalled(mockIRecommendedRepository.getRecommendedTickets());
      // assert
      verify(mockIRecommendedRepository.getRecommendedTickets());
    });

    test(
      'should emit [Loading, Error] when getting data fails',
      () async {
        // arrange
        when(mockIRecommendedRepository.getRecommendedTickets()).thenAnswer(
            (realInvocation) => Future.value(ResultFailed(ServerFailure())));

        // assert later
        final expected = [
          Loading(),
          Error(SERVER_FAILURE_MESSAGE),
        ];
        expectLater(recommendedOffersBloc.stream, emitsInOrder(expected));
        // act
        recommendedOffersBloc.add(GetRecommednedOffersEvent());
      },
    );

    test(
      'should emit [Loading, Loaded] when getting data is successful',
      () async {
        // arrange
        when(mockIRecommendedRepository.getRecommendedTickets())
            .thenAnswer((realInvocation) => Future.value(ResultOk(data)));

        // assert later
        final expected = [
          Loading(),
          Loaded(data),
        ];
        expectLater(recommendedOffersBloc.stream, emitsInOrder(expected));
        // act
        recommendedOffersBloc.add(GetRecommednedOffersEvent());
      },
    );
  });
}
