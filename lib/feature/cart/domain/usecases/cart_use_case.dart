import 'package:dartz/dartz.dart';
import 'package:supermarket/core/failure/failure.dart';
import 'package:supermarket/feature/cart/domain/entities/cart_item/cart_item_entity.dart';

import '../repository/cart_repository.dart';

class CartUseCase {
  final CartRepository _repository;
  CartUseCase(this._repository);
  Future<Either<Failure, CartItem>> updateCart(CartItem item) async {
    return await _repository.updateCartItem(item);
  }

  Future<Either<Failure, List<CartItem>>> getCartItems() async {
    return await _repository.getCartItems();
  }

  Future<Either<Failure, int>> deleteCartItem(int id) async {
    return await _repository.delete(id);
  }

  Future<Either<Failure, bool>> clearCart() async {
    return await _repository.clearCart();
  }
}
