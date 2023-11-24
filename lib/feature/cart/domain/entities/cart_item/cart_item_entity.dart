// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../products/domain/entites/product/product_entity.dart';
part 'cart_item_entity.freezed.dart';
part 'cart_item_entity.g.dart';

@freezed
class CartItem with _$CartItem {
  const factory CartItem({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'quantity') required int quantity,
    @JsonKey(name: 'product') required Product product,
  }) = _CartItem;

  factory CartItem.fromJson(Map<String, dynamic> json) =>
      _$CartItemFromJson(json);
}
