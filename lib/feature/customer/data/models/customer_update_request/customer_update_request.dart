// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'customer_update_request.freezed.dart';
part 'customer_update_request.g.dart';

@freezed
class CustomerUpdateRequestParam with _$CustomerUpdateRequestParam {
  const factory CustomerUpdateRequestParam({
    @JsonKey(name: "id") @Default(null) int? id,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "profile_pic") @Default(null) String? profilePic,
    @JsonKey(name: "mobile_number") required String mobileNumber,
    @JsonKey(name: "email") required String email,
    @JsonKey(name: "street") required String street,
    @JsonKey(name: "street_two") required String streetTwo,
    @JsonKey(name: "city") required String city,
    @JsonKey(name: "pincode") required String pincode,
    @JsonKey(name: "country") required String country,
    @JsonKey(name: "state") required String state,
  }) = _CustomerUpdateRequestParam;

  factory CustomerUpdateRequestParam.fromJson(Map<String, dynamic> json) =>
      _$CustomerUpdateRequestParamFromJson(json);
}
