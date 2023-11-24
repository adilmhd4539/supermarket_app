// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductImpl _$$ProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      image: json['image'] as String,
      price: (json['price'] as num).toDouble(),
      createdDate: DateTime.parse(json['created_date'] as String),
      createdTime: json['created_time'] as String,
      modifiedDate: DateTime.parse(json['modified_date'] as String),
      modifiedTime: json['modified_time'] as String,
      flag: json['flag'] as bool,
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'price': instance.price,
      'created_date': instance.createdDate.toIso8601String(),
      'created_time': instance.createdTime,
      'modified_date': instance.modifiedDate.toIso8601String(),
      'modified_time': instance.modifiedTime,
      'flag': instance.flag,
    };
