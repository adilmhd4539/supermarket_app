// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:supermarket/feature/products/data/models/product/product_model.dart';
part 'cart_item_model.freezed.dart';
part 'cart_item_model.g.dart';

@HiveType(typeId: 3)
@freezed
class CartItemModel with _$CartItemModel {
  const factory CartItemModel({
    @HiveField(0) @JsonKey(name: 'id') required int id,
    @HiveField(1) @JsonKey(name: 'quantity') required int quantity,
    @HiveField(2) @JsonKey(name: 'product') required ProductModel product,
  }) = _CartItemModel;

  factory CartItemModel.fromJson(Map<String, dynamic> json) =>
      _$CartItemModelFromJson(json);
}
