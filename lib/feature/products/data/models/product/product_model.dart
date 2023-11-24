// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
part 'product_model.freezed.dart';
part 'product_model.g.dart';

@HiveType(typeId: 1)
@freezed
class ProductModel with _$ProductModel {
  const factory ProductModel({
    @HiveField(0) @JsonKey(name: "id") required int id,
    @HiveField(1) @JsonKey(name: "name") required String name,
    @HiveField(2) @JsonKey(name: "image") required String image,
    @HiveField(3) @JsonKey(name: "price") required double price,
    @HiveField(4) @JsonKey(name: "created_date") required DateTime createdDate,
    @HiveField(5) @JsonKey(name: "created_time") required String createdTime,
    @HiveField(6)
    @JsonKey(name: "modified_date")
    required DateTime modifiedDate,
    @HiveField(7) @JsonKey(name: "modified_time") required String modifiedTime,
    @HiveField(8) @JsonKey(name: "flag") required bool flag,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}
