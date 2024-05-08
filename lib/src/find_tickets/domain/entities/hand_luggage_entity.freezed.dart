// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hand_luggage_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HandLuggageEntity {
  bool get hasHandLuggage => throw _privateConstructorUsedError;
  String? get size => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HandLuggageEntityCopyWith<HandLuggageEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HandLuggageEntityCopyWith<$Res> {
  factory $HandLuggageEntityCopyWith(
          HandLuggageEntity value, $Res Function(HandLuggageEntity) then) =
      _$HandLuggageEntityCopyWithImpl<$Res, HandLuggageEntity>;
  @useResult
  $Res call({bool hasHandLuggage, String? size});
}

/// @nodoc
class _$HandLuggageEntityCopyWithImpl<$Res, $Val extends HandLuggageEntity>
    implements $HandLuggageEntityCopyWith<$Res> {
  _$HandLuggageEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasHandLuggage = null,
    Object? size = freezed,
  }) {
    return _then(_value.copyWith(
      hasHandLuggage: null == hasHandLuggage
          ? _value.hasHandLuggage
          : hasHandLuggage // ignore: cast_nullable_to_non_nullable
              as bool,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HandLuggageEntityImplCopyWith<$Res>
    implements $HandLuggageEntityCopyWith<$Res> {
  factory _$$HandLuggageEntityImplCopyWith(_$HandLuggageEntityImpl value,
          $Res Function(_$HandLuggageEntityImpl) then) =
      __$$HandLuggageEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool hasHandLuggage, String? size});
}

/// @nodoc
class __$$HandLuggageEntityImplCopyWithImpl<$Res>
    extends _$HandLuggageEntityCopyWithImpl<$Res, _$HandLuggageEntityImpl>
    implements _$$HandLuggageEntityImplCopyWith<$Res> {
  __$$HandLuggageEntityImplCopyWithImpl(_$HandLuggageEntityImpl _value,
      $Res Function(_$HandLuggageEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasHandLuggage = null,
    Object? size = freezed,
  }) {
    return _then(_$HandLuggageEntityImpl(
      hasHandLuggage: null == hasHandLuggage
          ? _value.hasHandLuggage
          : hasHandLuggage // ignore: cast_nullable_to_non_nullable
              as bool,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$HandLuggageEntityImpl implements _HandLuggageEntity {
  const _$HandLuggageEntityImpl({required this.hasHandLuggage, this.size})
      : assert(
            (hasHandLuggage == true && size != null) || hasHandLuggage == false,
            'HandLuggage must contain info about a size if included');

  @override
  final bool hasHandLuggage;
  @override
  final String? size;

  @override
  String toString() {
    return 'HandLuggageEntity(hasHandLuggage: $hasHandLuggage, size: $size)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HandLuggageEntityImpl &&
            (identical(other.hasHandLuggage, hasHandLuggage) ||
                other.hasHandLuggage == hasHandLuggage) &&
            (identical(other.size, size) || other.size == size));
  }

  @override
  int get hashCode => Object.hash(runtimeType, hasHandLuggage, size);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HandLuggageEntityImplCopyWith<_$HandLuggageEntityImpl> get copyWith =>
      __$$HandLuggageEntityImplCopyWithImpl<_$HandLuggageEntityImpl>(
          this, _$identity);
}

abstract class _HandLuggageEntity implements HandLuggageEntity {
  const factory _HandLuggageEntity(
      {required final bool hasHandLuggage,
      final String? size}) = _$HandLuggageEntityImpl;

  @override
  bool get hasHandLuggage;
  @override
  String? get size;
  @override
  @JsonKey(ignore: true)
  _$$HandLuggageEntityImplCopyWith<_$HandLuggageEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
