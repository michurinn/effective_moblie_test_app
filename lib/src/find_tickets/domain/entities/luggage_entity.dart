import 'package:freezed_annotation/freezed_annotation.dart';

part 'luggage_entity.freezed.dart';


@freezed
class LuggageEntity with _$LuggageEntity {
  const factory LuggageEntity({
    required bool hasLuggage,
    int? price,
  }) = _LuggageEntity;
}