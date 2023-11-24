// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NetWorkResponseModelImpl _$$NetWorkResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$NetWorkResponseModelImpl(
      errorCode: json['error_code'] as int? ?? 0,
      data: json['data'],
      message: json['message'] as String? ?? '',
    );

Map<String, dynamic> _$$NetWorkResponseModelImplToJson(
        _$NetWorkResponseModelImpl instance) =>
    <String, dynamic>{
      'error_code': instance.errorCode,
      'data': instance.data,
      'message': instance.message,
    };
