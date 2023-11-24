import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:supermarket/core/failure/failure.dart';
import 'package:supermarket/feature/cart/domain/usecases/cart_use_case.dart';

import '../../domain/entities/cart_item/cart_item_entity.dart';

part 'cart_event.dart';
part 'cart_state.dart';
part 'cart_bloc.freezed.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  final CartUseCase _cartUseCase;
  CartBloc(this._cartUseCase) : super(CartState.initial()) {
    on<UpdateCart>(_onUpdateCart);
    on<GetCartItems>(_onUpdateCartItems);
    on<ClearCart>(_onClearCart);
  }
  FutureOr<void> _onClearCart(ClearCart event, Emitter<CartState> emit) async {
    await _cartUseCase.clearCart();
    emit(state.copyWith(cartItems: []));
  }

  FutureOr<void> _onUpdateCartItems(
      GetCartItems event, Emitter<CartState> emit) async {
    emit(state.copyWith(cartBlocState: CartBlocState.loading));
    final response = await _cartUseCase.getCartItems();
    response.fold(
        (error) => emit(state.copyWith(
              cartBlocState: CartBlocState.error,
              failure: error,
            )),
        (cart) => emit(state.copyWith(
              cartBlocState: CartBlocState.loaded,
              cartItems: cart,
            )));
  }

  FutureOr<void> _onUpdateCart(
      UpdateCart event, Emitter<CartState> emit) async {
    emit(state.copyWith(
      cartBlocState: CartBlocState.updating,
      updatingProductId: event.item.product.id,
    ));
    if (event.item.quantity > 0) {
      final response = await _cartUseCase.updateCart(event.item);
      response.fold(
          (error) => emit(
                state.copyWith(
                  updatingProductId: null,
                  cartBlocState: CartBlocState.updatingFailed,
                  failure: error,
                ),
              ), (response) {
        final List<CartItem> cart = List.from(state.cartItems);
        final int index = cart.indexWhere(
            (element) => element.product.id == event.item.product.id);
        if (index != -1) {
          cart[index] = response;
        } else {
          cart.add(response);
        }
        emit(state.copyWith(
          cartItems: cart,
          updatingProductId: null,
          cartBlocState: CartBlocState.updatingSuccess,
        ));
      });
    } else {
      final response = await _cartUseCase.deleteCartItem(event.item.id);
      response.fold(
          (error) => emit(state.copyWith(
                updatingProductId: null,
                cartBlocState: CartBlocState.updatingFailed,
              )), (id) {
        final List<CartItem> cart = List.from(state.cartItems);
        cart.removeWhere((element) => element.id == id);
        emit(state.copyWith(
          cartItems: cart,
          updatingProductId: null,
          cartBlocState: CartBlocState.updatingSuccess,
        ));
      });
    }
  }
}
