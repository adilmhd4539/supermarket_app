import 'package:dartz/dartz.dart';

import 'package:supermarket/core/failure/failure.dart';
import 'package:supermarket/feature/cart/data/model/cart_item/cart_item_model.dart';

import 'package:supermarket/feature/cart/domain/entities/cart_item/cart_item_entity.dart';
import 'package:supermarket/feature/products/data/models/product/product_model.dart';
import 'package:supermarket/feature/products/domain/entites/product/product_entity.dart';

import '../../domain/repository/cart_repository.dart';
import '../data_source/cart_local_data_source.dart';

class CartRepositoryImpl implements CartRepository {
  final CartLocalDataSource _dataSource;
  CartRepositoryImpl(this._dataSource);
  @override
  Future<Either<Failure, int>> delete(int id) async {
    try {
      return Right(await _dataSource.delete(id));
    } catch (e) {
      if (e is Failure) {
        return Left(e);
      }
      return const Left(Failure.unknownFailure());
    }
  }

  @override
  Future<Either<Failure, List<CartItem>>> getCartItems() async {
    try {
      return Right((await _dataSource.getCartItems())
          .map((e) => CartItem(
              id: e.id,
              quantity: e.quantity,
              product: Product.fromJson(e.product.toJson())))
          .toList());
    } catch (e) {
      if (e is Failure) {
        return Left(e);
      }
      return const Left(Failure.unknownFailure());
    }
  }

  @override
  Future<Either<Failure, CartItem>> updateCartItem(CartItem item) async {
    try {
      final int quantity = item.quantity;
      final int id = item.id;
      final productJson = item.product.toJson();
      final data = await _dataSource.updateCartItem(CartItemModel(
        id: id,
        product: ProductModel.fromJson(productJson),
        quantity: quantity,
      ));

      return Right(CartItem(
        id: data.id,
        quantity: data.quantity,
        product: item.product,
      ));
    } catch (e) {
      if (e is Failure) {
        return Left(e);
      }
      return const Left(Failure.unknownFailure());
    }
  }

  @override
  Future<Either<Failure, bool>> clearCart() async {
    try {
      return Right(await _dataSource.clearCart());
    } catch (e) {
      if (e is Failure) {
        return Left(e);
      }
      return const Left(Failure.unknownFailure());
    }
  }
}
