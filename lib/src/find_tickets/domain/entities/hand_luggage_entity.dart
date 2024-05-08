import 'package:freezed_annotation/freezed_annotation.dart';

part 'hand_luggage_entity.freezed.dart';

@freezed
class HandLuggageEntity with _$HandLuggageEntity {
  @Assert('(hasHandLuggage == true && size != null)||hasHandLuggage == false',
      'HandLuggage must contain info about a size if included')
  const factory HandLuggageEntity({
    required bool hasHandLuggage,
    String? size,
  }) = _HandLuggageEntity;

  factory HandLuggageEntity.fromMap(Map<String, dynamic> map) => HandLuggageEntity(
    hasHandLuggage: map['has_hand_luggage'] as bool,
    size: map.containsKey('has_hand_luggage') && map['has_hand_luggage'] == true ?  map['size'] as String? :  null,
  );
}
