// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) {
  return _ProductModel.fromJson(json);
}

/// @nodoc
mixin _$ProductModel {
  @HiveField(0)
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @HiveField(1)
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @HiveField(2)
  @JsonKey(name: "image")
  String get image => throw _privateConstructorUsedError;
  @HiveField(3)
  @JsonKey(name: "price")
  double get price => throw _privateConstructorUsedError;
  @HiveField(4)
  @JsonKey(name: "created_date")
  DateTime get createdDate => throw _privateConstructorUsedError;
  @HiveField(5)
  @JsonKey(name: "created_time")
  String get createdTime => throw _privateConstructorUsedError;
  @HiveField(6)
  @JsonKey(name: "modified_date")
  DateTime get modifiedDate => throw _privateConstructorUsedError;
  @HiveField(7)
  @JsonKey(name: "modified_time")
  String get modifiedTime => throw _privateConstructorUsedError;
  @HiveField(8)
  @JsonKey(name: "flag")
  bool get flag => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductModelCopyWith<ProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductModelCopyWith<$Res> {
  factory $ProductModelCopyWith(
          ProductModel value, $Res Function(ProductModel) then) =
      _$ProductModelCopyWithImpl<$Res, ProductModel>;
  @useResult
  $Res call(
      {@HiveField(0) @JsonKey(name: "id") int id,
      @HiveField(1) @JsonKey(name: "name") String name,
      @HiveField(2) @JsonKey(name: "image") String image,
      @HiveField(3) @JsonKey(name: "price") double price,
      @HiveField(4) @JsonKey(name: "created_date") DateTime createdDate,
      @HiveField(5) @JsonKey(name: "created_time") String createdTime,
      @HiveField(6) @JsonKey(name: "modified_date") DateTime modifiedDate,
      @HiveField(7) @JsonKey(name: "modified_time") String modifiedTime,
      @HiveField(8) @JsonKey(name: "flag") bool flag});
}

/// @nodoc
class _$ProductModelCopyWithImpl<$Res, $Val extends ProductModel>
    implements $ProductModelCopyWith<$Res> {
  _$ProductModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = null,
    Object? price = null,
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
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
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
abstract class _$$ProductModelImplCopyWith<$Res>
    implements $ProductModelCopyWith<$Res> {
  factory _$$ProductModelImplCopyWith(
          _$ProductModelImpl value, $Res Function(_$ProductModelImpl) then) =
      __$$ProductModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) @JsonKey(name: "id") int id,
      @HiveField(1) @JsonKey(name: "name") String name,
      @HiveField(2) @JsonKey(name: "image") String image,
      @HiveField(3) @JsonKey(name: "price") double price,
      @HiveField(4) @JsonKey(name: "created_date") DateTime createdDate,
      @HiveField(5) @JsonKey(name: "created_time") String createdTime,
      @HiveField(6) @JsonKey(name: "modified_date") DateTime modifiedDate,
      @HiveField(7) @JsonKey(name: "modified_time") String modifiedTime,
      @HiveField(8) @JsonKey(name: "flag") bool flag});
}

/// @nodoc
class __$$ProductModelImplCopyWithImpl<$Res>
    extends _$ProductModelCopyWithImpl<$Res, _$ProductModelImpl>
    implements _$$ProductModelImplCopyWith<$Res> {
  __$$ProductModelImplCopyWithImpl(
      _$ProductModelImpl _value, $Res Function(_$ProductModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = null,
    Object? price = null,
    Object? createdDate = null,
    Object? createdTime = null,
    Object? modifiedDate = null,
    Object? modifiedTime = null,
    Object? flag = null,
  }) {
    return _then(_$ProductModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
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
class _$ProductModelImpl implements _ProductModel {
  const _$ProductModelImpl(
      {@HiveField(0) @JsonKey(name: "id") required this.id,
      @HiveField(1) @JsonKey(name: "name") required this.name,
      @HiveField(2) @JsonKey(name: "image") required this.image,
      @HiveField(3) @JsonKey(name: "price") required this.price,
      @HiveField(4) @JsonKey(name: "created_date") required this.createdDate,
      @HiveField(5) @JsonKey(name: "created_time") required this.createdTime,
      @HiveField(6) @JsonKey(name: "modified_date") required this.modifiedDate,
      @HiveField(7) @JsonKey(name: "modified_time") required this.modifiedTime,
      @HiveField(8) @JsonKey(name: "flag") required this.flag});

  factory _$ProductModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductModelImplFromJson(json);

  @override
  @HiveField(0)
  @JsonKey(name: "id")
  final int id;
  @override
  @HiveField(1)
  @JsonKey(name: "name")
  final String name;
  @override
  @HiveField(2)
  @JsonKey(name: "image")
  final String image;
  @override
  @HiveField(3)
  @JsonKey(name: "price")
  final double price;
  @override
  @HiveField(4)
  @JsonKey(name: "created_date")
  final DateTime createdDate;
  @override
  @HiveField(5)
  @JsonKey(name: "created_time")
  final String createdTime;
  @override
  @HiveField(6)
  @JsonKey(name: "modified_date")
  final DateTime modifiedDate;
  @override
  @HiveField(7)
  @JsonKey(name: "modified_time")
  final String modifiedTime;
  @override
  @HiveField(8)
  @JsonKey(name: "flag")
  final bool flag;

  @override
  String toString() {
    return 'ProductModel(id: $id, name: $name, image: $image, price: $price, createdDate: $createdDate, createdTime: $createdTime, modifiedDate: $modifiedDate, modifiedTime: $modifiedTime, flag: $flag)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.price, price) || other.price == price) &&
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
  int get hashCode => Object.hash(runtimeType, id, name, image, price,
      createdDate, createdTime, modifiedDate, modifiedTime, flag);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductModelImplCopyWith<_$ProductModelImpl> get copyWith =>
      __$$ProductModelImplCopyWithImpl<_$ProductModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductModelImplToJson(
      this,
    );
  }
}

abstract class _ProductModel implements ProductModel {
  const factory _ProductModel(
          {@HiveField(0) @JsonKey(name: "id") required final int id,
          @HiveField(1) @JsonKey(name: "name") required final String name,
          @HiveField(2) @JsonKey(name: "image") required final String image,
          @HiveField(3) @JsonKey(name: "price") required final double price,
          @HiveField(4)
          @JsonKey(name: "created_date")
          required final DateTime createdDate,
          @HiveField(5)
          @JsonKey(name: "created_time")
          required final String createdTime,
          @HiveField(6)
          @JsonKey(name: "modified_date")
          required final DateTime modifiedDate,
          @HiveField(7)
          @JsonKey(name: "modified_time")
          required final String modifiedTime,
          @HiveField(8) @JsonKey(name: "flag") required final bool flag}) =
      _$ProductModelImpl;

  factory _ProductModel.fromJson(Map<String, dynamic> json) =
      _$ProductModelImpl.fromJson;

  @override
  @HiveField(0)
  @JsonKey(name: "id")
  int get id;
  @override
  @HiveField(1)
  @JsonKey(name: "name")
  String get name;
  @override
  @HiveField(2)
  @JsonKey(name: "image")
  String get image;
  @override
  @HiveField(3)
  @JsonKey(name: "price")
  double get price;
  @override
  @HiveField(4)
  @JsonKey(name: "created_date")
  DateTime get createdDate;
  @override
  @HiveField(5)
  @JsonKey(name: "created_time")
  String get createdTime;
  @override
  @HiveField(6)
  @JsonKey(name: "modified_date")
  DateTime get modifiedDate;
  @override
  @HiveField(7)
  @JsonKey(name: "modified_time")
  String get modifiedTime;
  @override
  @HiveField(8)
  @JsonKey(name: "flag")
  bool get flag;
  @override
  @JsonKey(ignore: true)
  _$$ProductModelImplCopyWith<_$ProductModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
