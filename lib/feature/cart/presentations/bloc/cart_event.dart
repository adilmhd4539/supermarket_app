part of 'cart_bloc.dart';

@freezed
class CartEvent with _$CartEvent {
  const factory CartEvent.updateCart({
    required CartItem item,
  }) = UpdateCart;
  const factory CartEvent.getCartItems() = GetCartItems;
  const factory CartEvent.clearCart() = ClearCart;
}
