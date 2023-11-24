import 'package:dartz/dartz.dart';

import 'package:supermarket/core/failure/failure.dart';
import 'package:supermarket/feature/customer/data/models/customer_update_request/customer_update_request.dart';

import '../../domain/entities/customer_entity/customer_entity.dart';
import '../../domain/repository/customer_repository.dart';
import '../data_source/customer_local_data_source.dart';
import '../data_source/customer_network_data_source.dart';

class CustomerRepositoryImpl implements CustomerRepository {
  final CustomerNetworkDataSource _customerNetworkDataSource;
  final CustomerLocalDataSource _customerLocalDataSource;
  CustomerRepositoryImpl(
      this._customerLocalDataSource, this._customerNetworkDataSource);
  @override
  Future<Either<Failure, List<Customer>>> getCustomers(
      String? searchKey) async {
    try {
      final customers =
          await _customerNetworkDataSource.getCustomers(searchKey: searchKey);
      return Right(
          customers.map((e) => Customer.fromJson(e.toJson())).toList());
    } catch (e) {
      if (e is Failure) {
        return e.maybeWhen(netWorkFailure: () {
          return Right(_customerLocalDataSource
              .getCustomers(searchKey)
              .map((e) => Customer.fromJson(e.toJson()))
              .toList());
        }, orElse: () {
          return Left(e);
        });
      } else {
        return const Left(Failure.unknownFailure());
      }
    }
  }

  @override
  Future<Either<Failure, Customer>> addCustomer(
      CustomerUpdateRequestParam param) async {
    try {
      final customer = await _customerNetworkDataSource.addCustomer(param);
      return Right(Customer.fromJson(customer.toJson()));
    } catch (e) {
      if (e is Failure) {
        return Left(e);
      }
      return const Left(Failure.unknownFailure());
    }
  }

  @override
  Future<Either<Failure, Customer>> updateCustomer(
      CustomerUpdateRequestParam param) async {
    try {
      final customer = await _customerNetworkDataSource.updateCustomer(param);
      return Right(Customer.fromJson(customer.toJson()));
    } catch (e) {
      if (e is Failure) {
        return Left(e);
      }
      return const Left(Failure.unknownFailure());
    }
  }
}
