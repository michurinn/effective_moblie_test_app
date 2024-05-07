import 'package:freezed_annotation/freezed_annotation.dart';

part 'hand_luggage_entity.freezed.dart';


@freezed
class HandLuggageEntity with _$HandLuggageEntity {
  const factory HandLuggageEntity({
    required bool hasHandLuggage,
    String? size,
  }) = _HandLuggageEntity;
}