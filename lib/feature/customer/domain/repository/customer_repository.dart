import 'package:dartz/dartz.dart';
import 'package:supermarket/core/failure/failure.dart';

import '../../data/models/customer_update_request/customer_update_request.dart';
import '../entities/customer_entity/customer_entity.dart';

abstract class CustomerRepository {
  Future<Either<Failure, List<Customer>>> getCustomers(String? searchKey);
  Future<Either<Failure, Customer>> addCustomer(
      CustomerUpdateRequestParam param);
  Future<Either<Failure, Customer>> updateCustomer(
      CustomerUpdateRequestParam param);
}
