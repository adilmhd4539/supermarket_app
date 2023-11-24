import 'package:dartz/dartz.dart';
import 'package:supermarket/core/failure/failure.dart';
import 'package:supermarket/feature/products/domain/entites/product/product_entity.dart';

abstract class ProductRepository {
  Future<Either<Failure, List<Product>>> getProducts({String? srearchKey});
}
