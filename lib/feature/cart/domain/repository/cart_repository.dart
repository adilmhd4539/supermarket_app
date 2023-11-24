import 'package:dartz/dartz.dart';
import 'package:supermarket/core/failure/failure.dart';
import 'package:supermarket/feature/cart/domain/entities/cart_item/cart_item_entity.dart';

abstract class CartRepository {
  Future<Either<Failure, CartItem>> updateCartItem(CartItem item);
  Future<Either<Failure, int>> delete(int id);
  Future<Either<Failure, List<CartItem>>> getCartItems();
  Future<Either<Failure, bool>> clearCart();
}
