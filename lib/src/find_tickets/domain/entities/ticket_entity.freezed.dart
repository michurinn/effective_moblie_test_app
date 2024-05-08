// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TicketEntity {
  int get id => throw _privateConstructorUsedError;
  String? get badge => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  String get providerName => throw _privateConstructorUsedError;
  String get company => throw _privateConstructorUsedError;
  DepatureArrivalPlaceEntity get departure =>
      throw _privateConstructorUsedError;
  DepatureArrivalPlaceEntity get arrival => throw _privateConstructorUsedError;
  bool get hasTransfer => throw _privateConstructorUsedError;
  bool get hasVisaTransfer => throw _privateConstructorUsedError;
  LuggageEntity get luggage => throw _privateConstructorUsedError;
  HandLuggageEntity get handLuggage => throw _privateConstructorUsedError;
  bool get isReturnable => throw _privateConstructorUsedError;
  bool get isExchangable => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TicketEntityCopyWith<TicketEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketEntityCopyWith<$Res> {
  factory $TicketEntityCopyWith(
          TicketEntity value, $Res Function(TicketEntity) then) =
      _$TicketEntityCopyWithImpl<$Res, TicketEntity>;
  @useResult
  $Res call(
      {int id,
      String? badge,
      int price,
      String providerName,
      String company,
      DepatureArrivalPlaceEntity departure,
      DepatureArrivalPlaceEntity arrival,
      bool hasTransfer,
      bool hasVisaTransfer,
      LuggageEntity luggage,
      HandLuggageEntity handLuggage,
      bool isReturnable,
      bool isExchangable});

  $DepatureArrivalPlaceEntityCopyWith<$Res> get departure;
  $DepatureArrivalPlaceEntityCopyWith<$Res> get arrival;
  $LuggageEntityCopyWith<$Res> get luggage;
  $HandLuggageEntityCopyWith<$Res> get handLuggage;
}

/// @nodoc
class _$TicketEntityCopyWithImpl<$Res, $Val extends TicketEntity>
    implements $TicketEntityCopyWith<$Res> {
  _$TicketEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? badge = freezed,
    Object? price = null,
    Object? providerName = null,
    Object? company = null,
    Object? departure = null,
    Object? arrival = null,
    Object? hasTransfer = null,
    Object? hasVisaTransfer = null,
    Object? luggage = null,
    Object? handLuggage = null,
    Object? isReturnable = null,
    Object? isExchangable = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      badge: freezed == badge
          ? _value.badge
          : badge // ignore: cast_nullable_to_non_nullable
              as String?,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      providerName: null == providerName
          ? _value.providerName
          : providerName // ignore: cast_nullable_to_non_nullable
              as String,
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String,
      departure: null == departure
          ? _value.departure
          : departure // ignore: cast_nullable_to_non_nullable
              as DepatureArrivalPlaceEntity,
      arrival: null == arrival
          ? _value.arrival
          : arrival // ignore: cast_nullable_to_non_nullable
              as DepatureArrivalPlaceEntity,
      hasTransfer: null == hasTransfer
          ? _value.hasTransfer
          : hasTransfer // ignore: cast_nullable_to_non_nullable
              as bool,
      hasVisaTransfer: null == hasVisaTransfer
          ? _value.hasVisaTransfer
          : hasVisaTransfer // ignore: cast_nullable_to_non_nullable
              as bool,
      luggage: null == luggage
          ? _value.luggage
          : luggage // ignore: cast_nullable_to_non_nullable
              as LuggageEntity,
      handLuggage: null == handLuggage
          ? _value.handLuggage
          : handLuggage // ignore: cast_nullable_to_non_nullable
              as HandLuggageEntity,
      isReturnable: null == isReturnable
          ? _value.isReturnable
          : isReturnable // ignore: cast_nullable_to_non_nullable
              as bool,
      isExchangable: null == isExchangable
          ? _value.isExchangable
          : isExchangable // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DepatureArrivalPlaceEntityCopyWith<$Res> get departure {
    return $DepatureArrivalPlaceEntityCopyWith<$Res>(_value.departure, (value) {
      return _then(_value.copyWith(departure: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DepatureArrivalPlaceEntityCopyWith<$Res> get arrival {
    return $DepatureArrivalPlaceEntityCopyWith<$Res>(_value.arrival, (value) {
      return _then(_value.copyWith(arrival: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LuggageEntityCopyWith<$Res> get luggage {
    return $LuggageEntityCopyWith<$Res>(_value.luggage, (value) {
      return _then(_value.copyWith(luggage: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $HandLuggageEntityCopyWith<$Res> get handLuggage {
    return $HandLuggageEntityCopyWith<$Res>(_value.handLuggage, (value) {
      return _then(_value.copyWith(handLuggage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TicketEntityImplCopyWith<$Res>
    implements $TicketEntityCopyWith<$Res> {
  factory _$$TicketEntityImplCopyWith(
          _$TicketEntityImpl value, $Res Function(_$TicketEntityImpl) then) =
      __$$TicketEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String? badge,
      int price,
      String providerName,
      String company,
      DepatureArrivalPlaceEntity departure,
      DepatureArrivalPlaceEntity arrival,
      bool hasTransfer,
      bool hasVisaTransfer,
      LuggageEntity luggage,
      HandLuggageEntity handLuggage,
      bool isReturnable,
      bool isExchangable});

  @override
  $DepatureArrivalPlaceEntityCopyWith<$Res> get departure;
  @override
  $DepatureArrivalPlaceEntityCopyWith<$Res> get arrival;
  @override
  $LuggageEntityCopyWith<$Res> get luggage;
  @override
  $HandLuggageEntityCopyWith<$Res> get handLuggage;
}

/// @nodoc
class __$$TicketEntityImplCopyWithImpl<$Res>
    extends _$TicketEntityCopyWithImpl<$Res, _$TicketEntityImpl>
    implements _$$TicketEntityImplCopyWith<$Res> {
  __$$TicketEntityImplCopyWithImpl(
      _$TicketEntityImpl _value, $Res Function(_$TicketEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? badge = freezed,
    Object? price = null,
    Object? providerName = null,
    Object? company = null,
    Object? departure = null,
    Object? arrival = null,
    Object? hasTransfer = null,
    Object? hasVisaTransfer = null,
    Object? luggage = null,
    Object? handLuggage = null,
    Object? isReturnable = null,
    Object? isExchangable = null,
  }) {
    return _then(_$TicketEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      badge: freezed == badge
          ? _value.badge
          : badge // ignore: cast_nullable_to_non_nullable
              as String?,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      providerName: null == providerName
          ? _value.providerName
          : providerName // ignore: cast_nullable_to_non_nullable
              as String,
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String,
      departure: null == departure
          ? _value.departure
          : departure // ignore: cast_nullable_to_non_nullable
              as DepatureArrivalPlaceEntity,
      arrival: null == arrival
          ? _value.arrival
          : arrival // ignore: cast_nullable_to_non_nullable
              as DepatureArrivalPlaceEntity,
      hasTransfer: null == hasTransfer
          ? _value.hasTransfer
          : hasTransfer // ignore: cast_nullable_to_non_nullable
              as bool,
      hasVisaTransfer: null == hasVisaTransfer
          ? _value.hasVisaTransfer
          : hasVisaTransfer // ignore: cast_nullable_to_non_nullable
              as bool,
      luggage: null == luggage
          ? _value.luggage
          : luggage // ignore: cast_nullable_to_non_nullable
              as LuggageEntity,
      handLuggage: null == handLuggage
          ? _value.handLuggage
          : handLuggage // ignore: cast_nullable_to_non_nullable
              as HandLuggageEntity,
      isReturnable: null == isReturnable
          ? _value.isReturnable
          : isReturnable // ignore: cast_nullable_to_non_nullable
              as bool,
      isExchangable: null == isExchangable
          ? _value.isExchangable
          : isExchangable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$TicketEntityImpl implements _TicketEntity {
  const _$TicketEntityImpl(
      {required this.id,
      required this.badge,
      required this.price,
      required this.providerName,
      required this.company,
      required this.departure,
      required this.arrival,
      required this.hasTransfer,
      required this.hasVisaTransfer,
      required this.luggage,
      required this.handLuggage,
      required this.isReturnable,
      required this.isExchangable});

  @override
  final int id;
  @override
  final String? badge;
  @override
  final int price;
  @override
  final String providerName;
  @override
  final String company;
  @override
  final DepatureArrivalPlaceEntity departure;
  @override
  final DepatureArrivalPlaceEntity arrival;
  @override
  final bool hasTransfer;
  @override
  final bool hasVisaTransfer;
  @override
  final LuggageEntity luggage;
  @override
  final HandLuggageEntity handLuggage;
  @override
  final bool isReturnable;
  @override
  final bool isExchangable;

  @override
  String toString() {
    return 'TicketEntity(id: $id, badge: $badge, price: $price, providerName: $providerName, company: $company, departure: $departure, arrival: $arrival, hasTransfer: $hasTransfer, hasVisaTransfer: $hasVisaTransfer, luggage: $luggage, handLuggage: $handLuggage, isReturnable: $isReturnable, isExchangable: $isExchangable)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.badge, badge) || other.badge == badge) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.providerName, providerName) ||
                other.providerName == providerName) &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.departure, departure) ||
                other.departure == departure) &&
            (identical(other.arrival, arrival) || other.arrival == arrival) &&
            (identical(other.hasTransfer, hasTransfer) ||
                other.hasTransfer == hasTransfer) &&
            (identical(other.hasVisaTransfer, hasVisaTransfer) ||
                other.hasVisaTransfer == hasVisaTransfer) &&
            (identical(other.luggage, luggage) || other.luggage == luggage) &&
            (identical(other.handLuggage, handLuggage) ||
                other.handLuggage == handLuggage) &&
            (identical(other.isReturnable, isReturnable) ||
                other.isReturnable == isReturnable) &&
            (identical(other.isExchangable, isExchangable) ||
                other.isExchangable == isExchangable));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      badge,
      price,
      providerName,
      company,
      departure,
      arrival,
      hasTransfer,
      hasVisaTransfer,
      luggage,
      handLuggage,
      isReturnable,
      isExchangable);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketEntityImplCopyWith<_$TicketEntityImpl> get copyWith =>
      __$$TicketEntityImplCopyWithImpl<_$TicketEntityImpl>(this, _$identity);
}

abstract class _TicketEntity implements TicketEntity {
  const factory _TicketEntity(
      {required final int id,
      required final String? badge,
      required final int price,
      required final String providerName,
      required final String company,
      required final DepatureArrivalPlaceEntity departure,
      required final DepatureArrivalPlaceEntity arrival,
      required final bool hasTransfer,
      required final bool hasVisaTransfer,
      required final LuggageEntity luggage,
      required final HandLuggageEntity handLuggage,
      required final bool isReturnable,
      required final bool isExchangable}) = _$TicketEntityImpl;

  @override
  int get id;
  @override
  String? get badge;
  @override
  int get price;
  @override
  String get providerName;
  @override
  String get company;
  @override
  DepatureArrivalPlaceEntity get departure;
  @override
  DepatureArrivalPlaceEntity get arrival;
  @override
  bool get hasTransfer;
  @override
  bool get hasVisaTransfer;
  @override
  LuggageEntity get luggage;
  @override
  HandLuggageEntity get handLuggage;
  @override
  bool get isReturnable;
  @override
  bool get isExchangable;
  @override
  @JsonKey(ignore: true)
  _$$TicketEntityImplCopyWith<_$TicketEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
