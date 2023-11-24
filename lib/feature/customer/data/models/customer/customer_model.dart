// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
part 'customer_model.freezed.dart';
part 'customer_model.g.dart';

@HiveType(typeId: 2)
@freezed
class CustomerModel with _$CustomerModel {
  const factory CustomerModel({
    @HiveField(0) @JsonKey(name: "id") required int id,
    @JsonKey(name: "name") @HiveField(1) required String name,
    @HiveField(2)
    @JsonKey(name: "profile_pic")
    @Default(null)
    String? profilePic,
    @HiveField(3) @JsonKey(name: "mobile_number") required String mobileNumber,
    @HiveField(4) @JsonKey(name: "email") required String email,
    @HiveField(5) @JsonKey(name: "street") required String street,
    @HiveField(6) @JsonKey(name: "street_two") required String streetTwo,
    @HiveField(7) @JsonKey(name: "city") required String city,
    @HiveField(8) @JsonKey(name: "pincode") required int pincode,
    @HiveField(9) @JsonKey(name: "country") required String country,
    @HiveField(10) @JsonKey(name: "state") required String state,
    @HiveField(11) @JsonKey(name: "created_date") required DateTime createdDate,
    @HiveField(12) @JsonKey(name: "created_time") required String createdTime,
    @HiveField(13)
    @JsonKey(name: "modified_date")
    required DateTime modifiedDate,
    @HiveField(14) @JsonKey(name: "modified_time") required String modifiedTime,
    @HiveField(15) @JsonKey(name: "flag") required bool flag,
  }) = _CustomerModel;

  factory CustomerModel.fromJson(Map<String, dynamic> json) =>
      _$CustomerModelFromJson(json);
}
