// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'product_entity.freezed.dart';
part 'product_entity.g.dart';

@freezed
class Product with _$Product {
  const factory Product({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "image") required String image,
    @JsonKey(name: "price") required double price,
    @JsonKey(name: "created_date") required DateTime createdDate,
    @JsonKey(name: "created_time") required String createdTime,
    @JsonKey(name: "modified_date") required DateTime modifiedDate,
    @JsonKey(name: "modified_time") required String modifiedTime,
    @JsonKey(name: "flag") required bool flag,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}
