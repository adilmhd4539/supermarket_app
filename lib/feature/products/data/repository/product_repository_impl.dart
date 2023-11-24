import 'package:dartz/dartz.dart';
import 'package:supermarket/core/failure/failure.dart';
import 'package:supermarket/feature/products/domain/entites/product/product_entity.dart';
import 'package:supermarket/feature/products/domain/repository/product_repository.dart';

import '../data_source/product_local_data_source.dart';
import '../data_source/product_nerwork_datasource.dart';

class ProductRespositoryImpl implements ProductRepository {
  final ProductNetworkDataSource _dataSource;
  final ProductLocalDataSource _localDataSource;
  ProductRespositoryImpl(this._dataSource, this._localDataSource);
  @override
  Future<Either<Failure, List<Product>>> getProducts(
      {String? srearchKey}) async {
    try {
      final products = await _dataSource.getProducts(searchKey: srearchKey);
      return Right(products.map((e) => Product.fromJson(e.toJson())).toList());
    } catch (e) {
      if (e is Failure) {
        return e.maybeWhen(netWorkFailure: () {
          return Right(_localDataSource
              .getProducts(searchKey: srearchKey)
              .map((e) => Product.fromJson(e.toJson()))
              .toList());
        }, orElse: () {
          return Left(e);
        });
      } else {
        return const Left(Failure.unknownFailure());
      }
    }
  }
}
