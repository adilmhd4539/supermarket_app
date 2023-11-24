// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CustomerModelAdapter extends TypeAdapter<CustomerModel> {
  @override
  final int typeId = 2;

  @override
  CustomerModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CustomerModel(
      id: fields[0] as int,
      name: fields[1] as String,
      profilePic: fields[2] as String?,
      mobileNumber: fields[3] as String,
      email: fields[4] as String,
      street: fields[5] as String,
      streetTwo: fields[6] as String,
      city: fields[7] as String,
      pincode: fields[8] as int,
      country: fields[9] as String,
      state: fields[10] as String,
      createdDate: fields[11] as DateTime,
      createdTime: fields[12] as String,
      modifiedDate: fields[13] as DateTime,
      modifiedTime: fields[14] as String,
      flag: fields[15] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, CustomerModel obj) {
    writer
      ..writeByte(16)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.profilePic)
      ..writeByte(3)
      ..write(obj.mobileNumber)
      ..writeByte(4)
      ..write(obj.email)
      ..writeByte(5)
      ..write(obj.street)
      ..writeByte(6)
      ..write(obj.streetTwo)
      ..writeByte(7)
      ..write(obj.city)
      ..writeByte(8)
      ..write(obj.pincode)
      ..writeByte(9)
      ..write(obj.country)
      ..writeByte(10)
      ..write(obj.state)
      ..writeByte(11)
      ..write(obj.createdDate)
      ..writeByte(12)
      ..write(obj.createdTime)
      ..writeByte(13)
      ..write(obj.modifiedDate)
      ..writeByte(14)
      ..write(obj.modifiedTime)
      ..writeByte(15)
      ..write(obj.flag);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CustomerModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CustomerModelImpl _$$CustomerModelImplFromJson(Map<String, dynamic> json) =>
    _$CustomerModelImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      profilePic: json['profile_pic'] as String?,
      mobileNumber: json['mobile_number'] as String,
      email: json['email'] as String,
      street: json['street'] as String,
      streetTwo: json['street_two'] as String,
      city: json['city'] as String,
      pincode: json['pincode'] as int,
      country: json['country'] as String,
      state: json['state'] as String,
      createdDate: DateTime.parse(json['created_date'] as String),
      createdTime: json['created_time'] as String,
      modifiedDate: DateTime.parse(json['modified_date'] as String),
      modifiedTime: json['modified_time'] as String,
      flag: json['flag'] as bool,
    );

Map<String, dynamic> _$$CustomerModelImplToJson(_$CustomerModelImpl instance) =>
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
      'created_date': instance.createdDate.toIso8601String(),
      'created_time': instance.createdTime,
      'modified_date': instance.modifiedDate.toIso8601String(),
      'modified_time': instance.modifiedTime,
      'flag': instance.flag,
    };
