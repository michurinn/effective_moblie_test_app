// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'requested_offer_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RequestedOfferEntity {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  List<String> get timeRange => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RequestedOfferEntityCopyWith<RequestedOfferEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestedOfferEntityCopyWith<$Res> {
  factory $RequestedOfferEntityCopyWith(RequestedOfferEntity value,
          $Res Function(RequestedOfferEntity) then) =
      _$RequestedOfferEntityCopyWithImpl<$Res, RequestedOfferEntity>;
  @useResult
  $Res call({int id, String title, int price, List<String> timeRange});
}

/// @nodoc
class _$RequestedOfferEntityCopyWithImpl<$Res,
        $Val extends RequestedOfferEntity>
    implements $RequestedOfferEntityCopyWith<$Res> {
  _$RequestedOfferEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? price = null,
    Object? timeRange = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      timeRange: null == timeRange
          ? _value.timeRange
          : timeRange // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestedOfferEntityImplCopyWith<$Res>
    implements $RequestedOfferEntityCopyWith<$Res> {
  factory _$$RequestedOfferEntityImplCopyWith(_$RequestedOfferEntityImpl value,
          $Res Function(_$RequestedOfferEntityImpl) then) =
      __$$RequestedOfferEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String title, int price, List<String> timeRange});
}

/// @nodoc
class __$$RequestedOfferEntityImplCopyWithImpl<$Res>
    extends _$RequestedOfferEntityCopyWithImpl<$Res, _$RequestedOfferEntityImpl>
    implements _$$RequestedOfferEntityImplCopyWith<$Res> {
  __$$RequestedOfferEntityImplCopyWithImpl(_$RequestedOfferEntityImpl _value,
      $Res Function(_$RequestedOfferEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? price = null,
    Object? timeRange = null,
  }) {
    return _then(_$RequestedOfferEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      timeRange: null == timeRange
          ? _value._timeRange
          : timeRange // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$RequestedOfferEntityImpl implements _RequestedOfferEntity {
  const _$RequestedOfferEntityImpl(
      {required this.id,
      required this.title,
      required this.price,
      required final List<String> timeRange})
      : _timeRange = timeRange;

  @override
  final int id;
  @override
  final String title;
  @override
  final int price;
  final List<String> _timeRange;
  @override
  List<String> get timeRange {
    if (_timeRange is EqualUnmodifiableListView) return _timeRange;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_timeRange);
  }

  @override
  String toString() {
    return 'RequestedOfferEntity(id: $id, title: $title, price: $price, timeRange: $timeRange)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestedOfferEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.price, price) || other.price == price) &&
            const DeepCollectionEquality()
                .equals(other._timeRange, _timeRange));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title, price,
      const DeepCollectionEquality().hash(_timeRange));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestedOfferEntityImplCopyWith<_$RequestedOfferEntityImpl>
      get copyWith =>
          __$$RequestedOfferEntityImplCopyWithImpl<_$RequestedOfferEntityImpl>(
              this, _$identity);
}

abstract class _RequestedOfferEntity implements RequestedOfferEntity {
  const factory _RequestedOfferEntity(
      {required final int id,
      required final String title,
      required final int price,
      required final List<String> timeRange}) = _$RequestedOfferEntityImpl;

  @override
  int get id;
  @override
  String get title;
  @override
  int get price;
  @override
  List<String> get timeRange;
  @override
  @JsonKey(ignore: true)
  _$$RequestedOfferEntityImplCopyWith<_$RequestedOfferEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
