import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:effective_test_work/core/enums/airports.dart';

part 'depature_arrival_place_entity.freezed.dart';


@freezed
class DepatureArrivalPlaceEntity with _$DepatureArrivalPlaceEntity {
  const factory DepatureArrivalPlaceEntity({
    required String city,
    required DateTime date,
    required Airports airport,
  }) = _DepatureArrivalPlaceEntity;

  factory DepatureArrivalPlaceEntity.fromMap(Map<String, dynamic> map) => DepatureArrivalPlaceEntity(
    city: map['town'] as String,
    date: DateTime.parse(map['date'] as String),
    airport: Airports.values.firstWhere((e) => e.name == map['airport']),
  );
}
