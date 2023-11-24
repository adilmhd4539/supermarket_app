// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'network_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NetWorkResponseModel _$NetWorkResponseModelFromJson(Map<String, dynamic> json) {
  return _NetWorkResponseModel.fromJson(json);
}

/// @nodoc
mixin _$NetWorkResponseModel {
  @JsonKey(name: 'error_code')
  int get errorCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  dynamic get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NetWorkResponseModelCopyWith<NetWorkResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetWorkResponseModelCopyWith<$Res> {
  factory $NetWorkResponseModelCopyWith(NetWorkResponseModel value,
          $Res Function(NetWorkResponseModel) then) =
      _$NetWorkResponseModelCopyWithImpl<$Res, NetWorkResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'error_code') int errorCode,
      @JsonKey(name: 'data') dynamic data,
      @JsonKey(name: 'message') String message});
}

/// @nodoc
class _$NetWorkResponseModelCopyWithImpl<$Res,
        $Val extends NetWorkResponseModel>
    implements $NetWorkResponseModelCopyWith<$Res> {
  _$NetWorkResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorCode = null,
    Object? data = freezed,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      errorCode: null == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as int,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NetWorkResponseModelImplCopyWith<$Res>
    implements $NetWorkResponseModelCopyWith<$Res> {
  factory _$$NetWorkResponseModelImplCopyWith(_$NetWorkResponseModelImpl value,
          $Res Function(_$NetWorkResponseModelImpl) then) =
      __$$NetWorkResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'error_code') int errorCode,
      @JsonKey(name: 'data') dynamic data,
      @JsonKey(name: 'message') String message});
}

/// @nodoc
class __$$NetWorkResponseModelImplCopyWithImpl<$Res>
    extends _$NetWorkResponseModelCopyWithImpl<$Res, _$NetWorkResponseModelImpl>
    implements _$$NetWorkResponseModelImplCopyWith<$Res> {
  __$$NetWorkResponseModelImplCopyWithImpl(_$NetWorkResponseModelImpl _value,
      $Res Function(_$NetWorkResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorCode = null,
    Object? data = freezed,
    Object? message = null,
  }) {
    return _then(_$NetWorkResponseModelImpl(
      errorCode: null == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as int,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NetWorkResponseModelImpl implements _NetWorkResponseModel {
  const _$NetWorkResponseModelImpl(
      {@JsonKey(name: 'error_code') this.errorCode = 0,
      @JsonKey(name: 'data') required this.data,
      @JsonKey(name: 'message') this.message = ''});

  factory _$NetWorkResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NetWorkResponseModelImplFromJson(json);

  @override
  @JsonKey(name: 'error_code')
  final int errorCode;
  @override
  @JsonKey(name: 'data')
  final dynamic data;
  @override
  @JsonKey(name: 'message')
  final String message;

  @override
  String toString() {
    return 'NetWorkResponseModel(errorCode: $errorCode, data: $data, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetWorkResponseModelImpl &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode) &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, errorCode,
      const DeepCollectionEquality().hash(data), message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NetWorkResponseModelImplCopyWith<_$NetWorkResponseModelImpl>
      get copyWith =>
          __$$NetWorkResponseModelImplCopyWithImpl<_$NetWorkResponseModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NetWorkResponseModelImplToJson(
      this,
    );
  }
}

abstract class _NetWorkResponseModel implements NetWorkResponseModel {
  const factory _NetWorkResponseModel(
          {@JsonKey(name: 'error_code') final int errorCode,
          @JsonKey(name: 'data') required final dynamic data,
          @JsonKey(name: 'message') final String message}) =
      _$NetWorkResponseModelImpl;

  factory _NetWorkResponseModel.fromJson(Map<String, dynamic> json) =
      _$NetWorkResponseModelImpl.fromJson;

  @override
  @JsonKey(name: 'error_code')
  int get errorCode;
  @override
  @JsonKey(name: 'data')
  dynamic get data;
  @override
  @JsonKey(name: 'message')
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$NetWorkResponseModelImplCopyWith<_$NetWorkResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
