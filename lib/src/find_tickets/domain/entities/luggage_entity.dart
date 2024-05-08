import 'package:freezed_annotation/freezed_annotation.dart';

part 'luggage_entity.freezed.dart';

@freezed
class LuggageEntity with _$LuggageEntity {
  @Assert('(hasLuggage == false && price != null)||hasLuggage == true',
      'Luggage can not be false without the price')
  const factory LuggageEntity({
    required bool hasLuggage,
    int? price,
  }) = _LuggageEntity;

  factory LuggageEntity.fromMap(Map<String, dynamic> map) => LuggageEntity(
        hasLuggage: map['has_luggage'] as bool,
        price: map.containsKey('has_luggage') && map['has_luggage'] == false
            ? (map['price'] as Map<String, dynamic>)['value'] as int?
            : null,
      );
}
