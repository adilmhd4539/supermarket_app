import 'package:dartz/dartz.dart';
import 'package:supermarket/core/failure/failure.dart';
import 'package:supermarket/feature/products/domain/repository/product_repository.dart';

import '../entites/product/product_entity.dart';

class ProductUseCase {
  final ProductRepository _repository;
  ProductUseCase(this._repository);
  Future<Either<Failure, List<Product>>> getProducts(
      {String? searchKey}) async {
    return await _repository.getProducts(srearchKey: searchKey);
  }
}
