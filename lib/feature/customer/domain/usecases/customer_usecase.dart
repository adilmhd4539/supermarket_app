import 'package:dartz/dartz.dart';
import 'package:supermarket/core/failure/failure.dart';
import 'package:supermarket/feature/customer/data/models/customer_update_request/customer_update_request.dart';
import 'package:supermarket/feature/customer/domain/repository/customer_repository.dart';

import '../entities/customer_entity/customer_entity.dart';

class CustomerUseCase {
  final CustomerRepository _repository;
  CustomerUseCase(this._repository);
  Future<Either<Failure, List<Customer>>> getCustomers(
      {String? searchKey}) async {
    return await _repository.getCustomers(searchKey);
  }

  Future<Either<Failure, Customer>> addCustomer(
      CustomerUpdateRequestParam param) async {
    return await _repository.addCustomer(param);
  }

  Future<Either<Failure, Customer>> updateCustomer(
      CustomerUpdateRequestParam param) async {
    return await _repository.updateCustomer(param);
  }
}
