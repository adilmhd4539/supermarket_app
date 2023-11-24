import 'package:dartz/dartz.dart';
import 'package:supermarket/core/failure/failure.dart';
import 'package:supermarket/feature/cart/domain/entities/cart_item/cart_item_entity.dart';

abstract class OrderRepository {
  Future<Either<Failure, bool>> createOrder({
    required List<CartItem> cart,
    required int customerId,
    required double total,
  });
}
