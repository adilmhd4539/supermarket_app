// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'network_response_model.freezed.dart';
part 'network_response_model.g.dart';

@freezed
class NetWorkResponseModel with _$NetWorkResponseModel {
  const factory NetWorkResponseModel({
    @JsonKey(name: 'error_code') @Default(0) int errorCode,
    @JsonKey(name: 'data') required dynamic data,
    @JsonKey(name: 'message') @Default('') String message,
  }) = _NetWorkResponseModel;

  factory NetWorkResponseModel.fromJson(Map<String, dynamic> json) =>
      _$NetWorkResponseModelFromJson(json);
}
