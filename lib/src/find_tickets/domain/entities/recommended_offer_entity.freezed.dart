// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recommended_offer_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RecommendedOfferEntity {
  int get id => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecommendedOfferEntityCopyWith<RecommendedOfferEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecommendedOfferEntityCopyWith<$Res> {
  factory $RecommendedOfferEntityCopyWith(RecommendedOfferEntity value,
          $Res Function(RecommendedOfferEntity) then) =
      _$RecommendedOfferEntityCopyWithImpl<$Res, RecommendedOfferEntity>;
  @useResult
  $Res call({int id, String city, String title, int price});
}

/// @nodoc
class _$RecommendedOfferEntityCopyWithImpl<$Res,
        $Val extends RecommendedOfferEntity>
    implements $RecommendedOfferEntityCopyWith<$Res> {
  _$RecommendedOfferEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? city = null,
    Object? title = null,
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecommendedOfferEntityImplCopyWith<$Res>
    implements $RecommendedOfferEntityCopyWith<$Res> {
  factory _$$RecommendedOfferEntityImplCopyWith(
          _$RecommendedOfferEntityImpl value,
          $Res Function(_$RecommendedOfferEntityImpl) then) =
      __$$RecommendedOfferEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String city, String title, int price});
}

/// @nodoc
class __$$RecommendedOfferEntityImplCopyWithImpl<$Res>
    extends _$RecommendedOfferEntityCopyWithImpl<$Res,
        _$RecommendedOfferEntityImpl>
    implements _$$RecommendedOfferEntityImplCopyWith<$Res> {
  __$$RecommendedOfferEntityImplCopyWithImpl(
      _$RecommendedOfferEntityImpl _value,
      $Res Function(_$RecommendedOfferEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? city = null,
    Object? title = null,
    Object? price = null,
  }) {
    return _then(_$RecommendedOfferEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RecommendedOfferEntityImpl implements _RecommendedOfferEntity {
  const _$RecommendedOfferEntityImpl(
      {required this.id,
      required this.city,
      required this.title,
      required this.price});

  @override
  final int id;
  @override
  final String city;
  @override
  final String title;
  @override
  final int price;

  @override
  String toString() {
    return 'RecommendedOfferEntity(id: $id, city: $city, title: $title, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecommendedOfferEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.price, price) || other.price == price));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, city, title, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecommendedOfferEntityImplCopyWith<_$RecommendedOfferEntityImpl>
      get copyWith => __$$RecommendedOfferEntityImplCopyWithImpl<
          _$RecommendedOfferEntityImpl>(this, _$identity);
}

abstract class _RecommendedOfferEntity implements RecommendedOfferEntity {
  const factory _RecommendedOfferEntity(
      {required final int id,
      required final String city,
      required final String title,
      required final int price}) = _$RecommendedOfferEntityImpl;

  @override
  int get id;
  @override
  String get city;
  @override
  String get title;
  @override
  int get price;
  @override
  @JsonKey(ignore: true)
  _$$RecommendedOfferEntityImplCopyWith<_$RecommendedOfferEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
