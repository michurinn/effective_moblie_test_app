// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'depature_arrival_place_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DepatureArrivalPlaceEntity {
  String get city => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  Airports get airport => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DepatureArrivalPlaceEntityCopyWith<DepatureArrivalPlaceEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DepatureArrivalPlaceEntityCopyWith<$Res> {
  factory $DepatureArrivalPlaceEntityCopyWith(DepatureArrivalPlaceEntity value,
          $Res Function(DepatureArrivalPlaceEntity) then) =
      _$DepatureArrivalPlaceEntityCopyWithImpl<$Res,
          DepatureArrivalPlaceEntity>;
  @useResult
  $Res call({String city, DateTime date, Airports airport});
}

/// @nodoc
class _$DepatureArrivalPlaceEntityCopyWithImpl<$Res,
        $Val extends DepatureArrivalPlaceEntity>
    implements $DepatureArrivalPlaceEntityCopyWith<$Res> {
  _$DepatureArrivalPlaceEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? city = null,
    Object? date = null,
    Object? airport = null,
  }) {
    return _then(_value.copyWith(
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      airport: null == airport
          ? _value.airport
          : airport // ignore: cast_nullable_to_non_nullable
              as Airports,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DepatureArrivalPlaceEntityImplCopyWith<$Res>
    implements $DepatureArrivalPlaceEntityCopyWith<$Res> {
  factory _$$DepatureArrivalPlaceEntityImplCopyWith(
          _$DepatureArrivalPlaceEntityImpl value,
          $Res Function(_$DepatureArrivalPlaceEntityImpl) then) =
      __$$DepatureArrivalPlaceEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String city, DateTime date, Airports airport});
}

/// @nodoc
class __$$DepatureArrivalPlaceEntityImplCopyWithImpl<$Res>
    extends _$DepatureArrivalPlaceEntityCopyWithImpl<$Res,
        _$DepatureArrivalPlaceEntityImpl>
    implements _$$DepatureArrivalPlaceEntityImplCopyWith<$Res> {
  __$$DepatureArrivalPlaceEntityImplCopyWithImpl(
      _$DepatureArrivalPlaceEntityImpl _value,
      $Res Function(_$DepatureArrivalPlaceEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? city = null,
    Object? date = null,
    Object? airport = null,
  }) {
    return _then(_$DepatureArrivalPlaceEntityImpl(
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      airport: null == airport
          ? _value.airport
          : airport // ignore: cast_nullable_to_non_nullable
              as Airports,
    ));
  }
}

/// @nodoc

class _$DepatureArrivalPlaceEntityImpl implements _DepatureArrivalPlaceEntity {
  const _$DepatureArrivalPlaceEntityImpl(
      {required this.city, required this.date, required this.airport});

  @override
  final String city;
  @override
  final DateTime date;
  @override
  final Airports airport;

  @override
  String toString() {
    return 'DepatureArrivalPlaceEntity(city: $city, date: $date, airport: $airport)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DepatureArrivalPlaceEntityImpl &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.airport, airport) || other.airport == airport));
  }

  @override
  int get hashCode => Object.hash(runtimeType, city, date, airport);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DepatureArrivalPlaceEntityImplCopyWith<_$DepatureArrivalPlaceEntityImpl>
      get copyWith => __$$DepatureArrivalPlaceEntityImplCopyWithImpl<
          _$DepatureArrivalPlaceEntityImpl>(this, _$identity);
}

abstract class _DepatureArrivalPlaceEntity
    implements DepatureArrivalPlaceEntity {
  const factory _DepatureArrivalPlaceEntity(
      {required final String city,
      required final DateTime date,
      required final Airports airport}) = _$DepatureArrivalPlaceEntityImpl;

  @override
  String get city;
  @override
  DateTime get date;
  @override
  Airports get airport;
  @override
  @JsonKey(ignore: true)
  _$$DepatureArrivalPlaceEntityImplCopyWith<_$DepatureArrivalPlaceEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
