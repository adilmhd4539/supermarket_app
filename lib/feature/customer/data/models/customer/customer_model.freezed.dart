// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CustomerModel _$CustomerModelFromJson(Map<String, dynamic> json) {
  return _CustomerModel.fromJson(json);
}

/// @nodoc
mixin _$CustomerModel {
  @HiveField(0)
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  @HiveField(1)
  String get name => throw _privateConstructorUsedError;
  @HiveField(2)
  @JsonKey(name: "profile_pic")
  String? get profilePic => throw _privateConstructorUsedError;
  @HiveField(3)
  @JsonKey(name: "mobile_number")
  String get mobileNumber => throw _privateConstructorUsedError;
  @HiveField(4)
  @JsonKey(name: "email")
  String get email => throw _privateConstructorUsedError;
  @HiveField(5)
  @JsonKey(name: "street")
  String get street => throw _privateConstructorUsedError;
  @HiveField(6)
  @JsonKey(name: "street_two")
  String get streetTwo => throw _privateConstructorUsedError;
  @HiveField(7)
  @JsonKey(name: "city")
  String get city => throw _privateConstructorUsedError;
  @HiveField(8)
  @JsonKey(name: "pincode")
  int get pincode => throw _privateConstructorUsedError;
  @HiveField(9)
  @JsonKey(name: "country")
  String get country => throw _privateConstructorUsedError;
  @HiveField(10)
  @JsonKey(name: "state")
  String get state => throw _privateConstructorUsedError;
  @HiveField(11)
  @JsonKey(name: "created_date")
  DateTime get createdDate => throw _privateConstructorUsedError;
  @HiveField(12)
  @JsonKey(name: "created_time")
  String get createdTime => throw _privateConstructorUsedError;
  @HiveField(13)
  @JsonKey(name: "modified_date")
  DateTime get modifiedDate => throw _privateConstructorUsedError;
  @HiveField(14)
  @JsonKey(name: "modified_time")
  String get modifiedTime => throw _privateConstructorUsedError;
  @HiveField(15)
  @JsonKey(name: "flag")
  bool get flag => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerModelCopyWith<CustomerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerModelCopyWith<$Res> {
  factory $CustomerModelCopyWith(
          CustomerModel value, $Res Function(CustomerModel) then) =
      _$CustomerModelCopyWithImpl<$Res, CustomerModel>;
  @useResult
  $Res call(
      {@HiveField(0) @JsonKey(name: "id") int id,
      @JsonKey(name: "name") @HiveField(1) String name,
      @HiveField(2) @JsonKey(name: "profile_pic") String? profilePic,
      @HiveField(3) @JsonKey(name: "mobile_number") String mobileNumber,
      @HiveField(4) @JsonKey(name: "email") String email,
      @HiveField(5) @JsonKey(name: "street") String street,
      @HiveField(6) @JsonKey(name: "street_two") String streetTwo,
      @HiveField(7) @JsonKey(name: "city") String city,
      @HiveField(8) @JsonKey(name: "pincode") int pincode,
      @HiveField(9) @JsonKey(name: "country") String country,
      @HiveField(10) @JsonKey(name: "state") String state,
      @HiveField(11) @JsonKey(name: "created_date") DateTime createdDate,
      @HiveField(12) @JsonKey(name: "created_time") String createdTime,
      @HiveField(13) @JsonKey(name: "modified_date") DateTime modifiedDate,
      @HiveField(14) @JsonKey(name: "modified_time") String modifiedTime,
      @HiveField(15) @JsonKey(name: "flag") bool flag});
}

/// @nodoc
class _$CustomerModelCopyWithImpl<$Res, $Val extends CustomerModel>
    implements $CustomerModelCopyWith<$Res> {
  _$CustomerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? profilePic = freezed,
    Object? mobileNumber = null,
    Object? email = null,
    Object? street = null,
    Object? streetTwo = null,
    Object? city = null,
    Object? pincode = null,
    Object? country = null,
    Object? state = null,
    Object? createdDate = null,
    Object? createdTime = null,
    Object? modifiedDate = null,
    Object? modifiedTime = null,
    Object? flag = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      profilePic: freezed == profilePic
          ? _value.profilePic
          : profilePic // ignore: cast_nullable_to_non_nullable
              as String?,
      mobileNumber: null == mobileNumber
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      street: null == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
      streetTwo: null == streetTwo
          ? _value.streetTwo
          : streetTwo // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      pincode: null == pincode
          ? _value.pincode
          : pincode // ignore: cast_nullable_to_non_nullable
              as int,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      createdDate: null == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdTime: null == createdTime
          ? _value.createdTime
          : createdTime // ignore: cast_nullable_to_non_nullable
              as String,
      modifiedDate: null == modifiedDate
          ? _value.modifiedDate
          : modifiedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      modifiedTime: null == modifiedTime
          ? _value.modifiedTime
          : modifiedTime // ignore: cast_nullable_to_non_nullable
              as String,
      flag: null == flag
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CustomerModelImplCopyWith<$Res>
    implements $CustomerModelCopyWith<$Res> {
  factory _$$CustomerModelImplCopyWith(
          _$CustomerModelImpl value, $Res Function(_$CustomerModelImpl) then) =
      __$$CustomerModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) @JsonKey(name: "id") int id,
      @JsonKey(name: "name") @HiveField(1) String name,
      @HiveField(2) @JsonKey(name: "profile_pic") String? profilePic,
      @HiveField(3) @JsonKey(name: "mobile_number") String mobileNumber,
      @HiveField(4) @JsonKey(name: "email") String email,
      @HiveField(5) @JsonKey(name: "street") String street,
      @HiveField(6) @JsonKey(name: "street_two") String streetTwo,
      @HiveField(7) @JsonKey(name: "city") String city,
      @HiveField(8) @JsonKey(name: "pincode") int pincode,
      @HiveField(9) @JsonKey(name: "country") String country,
      @HiveField(10) @JsonKey(name: "state") String state,
      @HiveField(11) @JsonKey(name: "created_date") DateTime createdDate,
      @HiveField(12) @JsonKey(name: "created_time") String createdTime,
      @HiveField(13) @JsonKey(name: "modified_date") DateTime modifiedDate,
      @HiveField(14) @JsonKey(name: "modified_time") String modifiedTime,
      @HiveField(15) @JsonKey(name: "flag") bool flag});
}

/// @nodoc
class __$$CustomerModelImplCopyWithImpl<$Res>
    extends _$CustomerModelCopyWithImpl<$Res, _$CustomerModelImpl>
    implements _$$CustomerModelImplCopyWith<$Res> {
  __$$CustomerModelImplCopyWithImpl(
      _$CustomerModelImpl _value, $Res Function(_$CustomerModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? profilePic = freezed,
    Object? mobileNumber = null,
    Object? email = null,
    Object? street = null,
    Object? streetTwo = null,
    Object? city = null,
    Object? pincode = null,
    Object? country = null,
    Object? state = null,
    Object? createdDate = null,
    Object? createdTime = null,
    Object? modifiedDate = null,
    Object? modifiedTime = null,
    Object? flag = null,
  }) {
    return _then(_$CustomerModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      profilePic: freezed == profilePic
          ? _value.profilePic
          : profilePic // ignore: cast_nullable_to_non_nullable
              as String?,
      mobileNumber: null == mobileNumber
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      street: null == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
      streetTwo: null == streetTwo
          ? _value.streetTwo
          : streetTwo // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      pincode: null == pincode
          ? _value.pincode
          : pincode // ignore: cast_nullable_to_non_nullable
              as int,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      createdDate: null == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdTime: null == createdTime
          ? _value.createdTime
          : createdTime // ignore: cast_nullable_to_non_nullable
              as String,
      modifiedDate: null == modifiedDate
          ? _value.modifiedDate
          : modifiedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      modifiedTime: null == modifiedTime
          ? _value.modifiedTime
          : modifiedTime // ignore: cast_nullable_to_non_nullable
              as String,
      flag: null == flag
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CustomerModelImpl implements _CustomerModel {
  const _$CustomerModelImpl(
      {@HiveField(0) @JsonKey(name: "id") required this.id,
      @JsonKey(name: "name") @HiveField(1) required this.name,
      @HiveField(2) @JsonKey(name: "profile_pic") this.profilePic = null,
      @HiveField(3) @JsonKey(name: "mobile_number") required this.mobileNumber,
      @HiveField(4) @JsonKey(name: "email") required this.email,
      @HiveField(5) @JsonKey(name: "street") required this.street,
      @HiveField(6) @JsonKey(name: "street_two") required this.streetTwo,
      @HiveField(7) @JsonKey(name: "city") required this.city,
      @HiveField(8) @JsonKey(name: "pincode") required this.pincode,
      @HiveField(9) @JsonKey(name: "country") required this.country,
      @HiveField(10) @JsonKey(name: "state") required this.state,
      @HiveField(11) @JsonKey(name: "created_date") required this.createdDate,
      @HiveField(12) @JsonKey(name: "created_time") required this.createdTime,
      @HiveField(13) @JsonKey(name: "modified_date") required this.modifiedDate,
      @HiveField(14) @JsonKey(name: "modified_time") required this.modifiedTime,
      @HiveField(15) @JsonKey(name: "flag") required this.flag});

  factory _$CustomerModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomerModelImplFromJson(json);

  @override
  @HiveField(0)
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "name")
  @HiveField(1)
  final String name;
  @override
  @HiveField(2)
  @JsonKey(name: "profile_pic")
  final String? profilePic;
  @override
  @HiveField(3)
  @JsonKey(name: "mobile_number")
  final String mobileNumber;
  @override
  @HiveField(4)
  @JsonKey(name: "email")
  final String email;
  @override
  @HiveField(5)
  @JsonKey(name: "street")
  final String street;
  @override
  @HiveField(6)
  @JsonKey(name: "street_two")
  final String streetTwo;
  @override
  @HiveField(7)
  @JsonKey(name: "city")
  final String city;
  @override
  @HiveField(8)
  @JsonKey(name: "pincode")
  final int pincode;
  @override
  @HiveField(9)
  @JsonKey(name: "country")
  final String country;
  @override
  @HiveField(10)
  @JsonKey(name: "state")
  final String state;
  @override
  @HiveField(11)
  @JsonKey(name: "created_date")
  final DateTime createdDate;
  @override
  @HiveField(12)
  @JsonKey(name: "created_time")
  final String createdTime;
  @override
  @HiveField(13)
  @JsonKey(name: "modified_date")
  final DateTime modifiedDate;
  @override
  @HiveField(14)
  @JsonKey(name: "modified_time")
  final String modifiedTime;
  @override
  @HiveField(15)
  @JsonKey(name: "flag")
  final bool flag;

  @override
  String toString() {
    return 'CustomerModel(id: $id, name: $name, profilePic: $profilePic, mobileNumber: $mobileNumber, email: $email, street: $street, streetTwo: $streetTwo, city: $city, pincode: $pincode, country: $country, state: $state, createdDate: $createdDate, createdTime: $createdTime, modifiedDate: $modifiedDate, modifiedTime: $modifiedTime, flag: $flag)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.profilePic, profilePic) ||
                other.profilePic == profilePic) &&
            (identical(other.mobileNumber, mobileNumber) ||
                other.mobileNumber == mobileNumber) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.street, street) || other.street == street) &&
            (identical(other.streetTwo, streetTwo) ||
                other.streetTwo == streetTwo) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.pincode, pincode) || other.pincode == pincode) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            (identical(other.createdTime, createdTime) ||
                other.createdTime == createdTime) &&
            (identical(other.modifiedDate, modifiedDate) ||
                other.modifiedDate == modifiedDate) &&
            (identical(other.modifiedTime, modifiedTime) ||
                other.modifiedTime == modifiedTime) &&
            (identical(other.flag, flag) || other.flag == flag));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      profilePic,
      mobileNumber,
      email,
      street,
      streetTwo,
      city,
      pincode,
      country,
      state,
      createdDate,
      createdTime,
      modifiedDate,
      modifiedTime,
      flag);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerModelImplCopyWith<_$CustomerModelImpl> get copyWith =>
      __$$CustomerModelImplCopyWithImpl<_$CustomerModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomerModelImplToJson(
      this,
    );
  }
}

abstract class _CustomerModel implements CustomerModel {
  const factory _CustomerModel(
          {@HiveField(0) @JsonKey(name: "id") required final int id,
          @JsonKey(name: "name") @HiveField(1) required final String name,
          @HiveField(2) @JsonKey(name: "profile_pic") final String? profilePic,
          @HiveField(3)
          @JsonKey(name: "mobile_number")
          required final String mobileNumber,
          @HiveField(4) @JsonKey(name: "email") required final String email,
          @HiveField(5) @JsonKey(name: "street") required final String street,
          @HiveField(6)
          @JsonKey(name: "street_two")
          required final String streetTwo,
          @HiveField(7) @JsonKey(name: "city") required final String city,
          @HiveField(8) @JsonKey(name: "pincode") required final int pincode,
          @HiveField(9) @JsonKey(name: "country") required final String country,
          @HiveField(10) @JsonKey(name: "state") required final String state,
          @HiveField(11)
          @JsonKey(name: "created_date")
          required final DateTime createdDate,
          @HiveField(12)
          @JsonKey(name: "created_time")
          required final String createdTime,
          @HiveField(13)
          @JsonKey(name: "modified_date")
          required final DateTime modifiedDate,
          @HiveField(14)
          @JsonKey(name: "modified_time")
          required final String modifiedTime,
          @HiveField(15) @JsonKey(name: "flag") required final bool flag}) =
      _$CustomerModelImpl;

  factory _CustomerModel.fromJson(Map<String, dynamic> json) =
      _$CustomerModelImpl.fromJson;

  @override
  @HiveField(0)
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "name")
  @HiveField(1)
  String get name;
  @override
  @HiveField(2)
  @JsonKey(name: "profile_pic")
  String? get profilePic;
  @override
  @HiveField(3)
  @JsonKey(name: "mobile_number")
  String get mobileNumber;
  @override
  @HiveField(4)
  @JsonKey(name: "email")
  String get email;
  @override
  @HiveField(5)
  @JsonKey(name: "street")
  String get street;
  @override
  @HiveField(6)
  @JsonKey(name: "street_two")
  String get streetTwo;
  @override
  @HiveField(7)
  @JsonKey(name: "city")
  String get city;
  @override
  @HiveField(8)
  @JsonKey(name: "pincode")
  int get pincode;
  @override
  @HiveField(9)
  @JsonKey(name: "country")
  String get country;
  @override
  @HiveField(10)
  @JsonKey(name: "state")
  String get state;
  @override
  @HiveField(11)
  @JsonKey(name: "created_date")
  DateTime get createdDate;
  @override
  @HiveField(12)
  @JsonKey(name: "created_time")
  String get createdTime;
  @override
  @HiveField(13)
  @JsonKey(name: "modified_date")
  DateTime get modifiedDate;
  @override
  @HiveField(14)
  @JsonKey(name: "modified_time")
  String get modifiedTime;
  @override
  @HiveField(15)
  @JsonKey(name: "flag")
  bool get flag;
  @override
  @JsonKey(ignore: true)
  _$$CustomerModelImplCopyWith<_$CustomerModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
