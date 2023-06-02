// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'conversionsModel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ConverModel _$ConverModelFromJson(Map<String, dynamic> json) {
  return _ConverModel.fromJson(json);
}

/// @nodoc
mixin _$ConverModel {
  String? get small => throw _privateConstructorUsedError;
  String? get medium => throw _privateConstructorUsedError;
  String? get large => throw _privateConstructorUsedError;
  String? get default1 => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConverModelCopyWith<ConverModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConverModelCopyWith<$Res> {
  factory $ConverModelCopyWith(
          ConverModel value, $Res Function(ConverModel) then) =
      _$ConverModelCopyWithImpl<$Res, ConverModel>;
  @useResult
  $Res call({String? small, String? medium, String? large, String? default1});
}

/// @nodoc
class _$ConverModelCopyWithImpl<$Res, $Val extends ConverModel>
    implements $ConverModelCopyWith<$Res> {
  _$ConverModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? small = freezed,
    Object? medium = freezed,
    Object? large = freezed,
    Object? default1 = freezed,
  }) {
    return _then(_value.copyWith(
      small: freezed == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String?,
      medium: freezed == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as String?,
      large: freezed == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String?,
      default1: freezed == default1
          ? _value.default1
          : default1 // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ConverModelCopyWith<$Res>
    implements $ConverModelCopyWith<$Res> {
  factory _$$_ConverModelCopyWith(
          _$_ConverModel value, $Res Function(_$_ConverModel) then) =
      __$$_ConverModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? small, String? medium, String? large, String? default1});
}

/// @nodoc
class __$$_ConverModelCopyWithImpl<$Res>
    extends _$ConverModelCopyWithImpl<$Res, _$_ConverModel>
    implements _$$_ConverModelCopyWith<$Res> {
  __$$_ConverModelCopyWithImpl(
      _$_ConverModel _value, $Res Function(_$_ConverModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? small = freezed,
    Object? medium = freezed,
    Object? large = freezed,
    Object? default1 = freezed,
  }) {
    return _then(_$_ConverModel(
      small: freezed == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String?,
      medium: freezed == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as String?,
      large: freezed == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String?,
      default1: freezed == default1
          ? _value.default1
          : default1 // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ConverModel implements _ConverModel {
  const _$_ConverModel(
      {required this.small,
      required this.medium,
      required this.large,
      required this.default1});

  factory _$_ConverModel.fromJson(Map<String, dynamic> json) =>
      _$$_ConverModelFromJson(json);

  @override
  final String? small;
  @override
  final String? medium;
  @override
  final String? large;
  @override
  final String? default1;

  @override
  String toString() {
    return 'ConverModel(small: $small, medium: $medium, large: $large, default1: $default1)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConverModel &&
            (identical(other.small, small) || other.small == small) &&
            (identical(other.medium, medium) || other.medium == medium) &&
            (identical(other.large, large) || other.large == large) &&
            (identical(other.default1, default1) ||
                other.default1 == default1));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, small, medium, large, default1);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ConverModelCopyWith<_$_ConverModel> get copyWith =>
      __$$_ConverModelCopyWithImpl<_$_ConverModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ConverModelToJson(
      this,
    );
  }
}

abstract class _ConverModel implements ConverModel {
  const factory _ConverModel(
      {required final String? small,
      required final String? medium,
      required final String? large,
      required final String? default1}) = _$_ConverModel;

  factory _ConverModel.fromJson(Map<String, dynamic> json) =
      _$_ConverModel.fromJson;

  @override
  String? get small;
  @override
  String? get medium;
  @override
  String? get large;
  @override
  String? get default1;
  @override
  @JsonKey(ignore: true)
  _$$_ConverModelCopyWith<_$_ConverModel> get copyWith =>
      throw _privateConstructorUsedError;
}
