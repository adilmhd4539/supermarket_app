part of 'cart_bloc.dart';

@freezed
class CartState with _$CartState {
  const factory CartState({
    required CartBlocState cartBlocState,
    Failure? failure,
    int? updatingProductId,
    required List<CartItem> cartItems,
  }) = _CartState;
  factory CartState.initial() =>
      const CartState(cartBlocState: CartBlocState.initial, cartItems: []);
}

enum CartBlocState {
  initial,
  loading,
  loaded,
  error,
  updating,
  updatingFailed,
  updatingSuccess,
}
