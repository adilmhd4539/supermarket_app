import 'package:dartz/dartz.dart';
import 'package:supermarket/core/failure/failure.dart';
import 'package:supermarket/feature/order/domain/repository/order_repository.dart';

import '../../../cart/domain/entities/cart_item/cart_item_entity.dart';

class OrderUsecase {
  final OrderRepository _orderRepository;
  OrderUsecase(this._orderRepository);

  Future<Either<Failure, bool>> createOrder(
      {required List<CartItem> cart,
      required int customerId,
      required double total}) async {
    return await _orderRepository.createOrder(
        cart: cart, customerId: customerId, total: total);
  }
}
