// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'customer_entity.freezed.dart';
part 'customer_entity.g.dart';

@freezed
class Customer with _$Customer {
  const factory Customer({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "profile_pic") @Default(null) String? profilePic,
    @JsonKey(name: "mobile_number") required String mobileNumber,
    @JsonKey(name: "email") required String email,
    @JsonKey(name: "street") required String street,
    @JsonKey(name: "street_two") required String streetTwo,
    @JsonKey(name: "city") required String city,
    @JsonKey(name: "pincode") required int pincode,
    @JsonKey(name: "country") required String country,
    @JsonKey(name: "state") required String state,
    @JsonKey(name: "created_date") required DateTime createdDate,
    @JsonKey(name: "created_time") required String createdTime,
    @JsonKey(name: "modified_date") required DateTime modifiedDate,
    @JsonKey(name: "modified_time") required String modifiedTime,
    @JsonKey(name: "flag") required bool flag,
  }) = _Customer;

  factory Customer.fromJson(Map<String, dynamic> json) =>
      _$CustomerFromJson(json);
}
