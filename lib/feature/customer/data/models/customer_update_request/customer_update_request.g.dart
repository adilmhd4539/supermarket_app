// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_update_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CustomerUpdateRequestParamImpl _$$CustomerUpdateRequestParamImplFromJson(
        Map<String, dynamic> json) =>
    _$CustomerUpdateRequestParamImpl(
      id: json['id'] as int?,
      name: json['name'] as String,
      profilePic: json['profile_pic'] as String?,
      mobileNumber: json['mobile_number'] as String,
      email: json['email'] as String,
      street: json['street'] as String,
      streetTwo: json['street_two'] as String,
      city: json['city'] as String,
      pincode: json['pincode'] as String,
      country: json['country'] as String,
      state: json['state'] as String,
    );

Map<String, dynamic> _$$CustomerUpdateRequestParamImplToJson(
        _$CustomerUpdateRequestParamImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'profile_pic': instance.profilePic,
      'mobile_number': instance.mobileNumber,
      'email': instance.email,
      'street': instance.street,
      'street_two': instance.streetTwo,
      'city': instance.city,
      'pincode': instance.pincode,
      'country': instance.country,
      'state': instance.state,
    };
