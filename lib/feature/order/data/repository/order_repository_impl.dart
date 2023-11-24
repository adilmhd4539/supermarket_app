import 'package:dartz/dartz.dart';
import 'package:supermarket/core/failure/failure.dart';
import 'package:supermarket/feature/cart/data/model/cart_item/cart_item_model.dart';
import 'package:supermarket/feature/cart/domain/entities/cart_item/cart_item_entity.dart';
import 'package:supermarket/feature/order/data/data_source/order_network_data_source.dart';
import 'package:supermarket/feature/order/domain/repository/order_repository.dart';
import 'package:supermarket/feature/products/data/models/product/product_model.dart';

class OrderRepositoryImpl implements OrderRepository {
  final OrderNetworkDataSource _dataSource;
  OrderRepositoryImpl(this._dataSource);
  @override
  Future<Either<Failure, bool>> createOrder(
      {required List<CartItem> cart,
      required int customerId,
      required double total}) async {
    try {
      return Right(await _dataSource.createOrder(
          cart: cart
              .map((e) => CartItemModel(
                  id: e.id,
                  quantity: e.quantity,
                  product: ProductModel.fromJson(e.product.toJson())))
              .toList(),
          customerId: customerId,
          total: total));
    } catch (e) {
      if (e is Failure) {
        return Left(e);
      } else {
        return const Left(Failure.unknownFailure());
      }
    }
  }
}
