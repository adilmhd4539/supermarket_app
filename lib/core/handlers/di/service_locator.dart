import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:supermarket/core/config/config.dart';
import 'package:supermarket/feature/cart/data/data_source/cart_local_data_source.dart';
import 'package:supermarket/feature/cart/data/model/cart_item/cart_item_model.dart';
import 'package:supermarket/feature/cart/data/repository/cart_repository_impl.dart';
import 'package:supermarket/feature/cart/domain/repository/cart_repository.dart';
import 'package:supermarket/feature/cart/presentations/bloc/cart_bloc.dart';
import 'package:supermarket/feature/customer/data/repository/customer_repository_impl.dart';
import 'package:supermarket/feature/order/data/data_source/order_network_data_source.dart';
import 'package:supermarket/feature/order/domain/order_usecase/order_usecase.dart';
import 'package:supermarket/feature/order/domain/repository/order_repository.dart';
import 'package:supermarket/feature/products/data/data_source/product_local_data_source.dart';
import 'package:supermarket/feature/products/data/data_source/product_nerwork_datasource.dart';
import 'package:supermarket/feature/products/data/models/product/product_model.dart';
import 'package:supermarket/feature/products/data/repository/product_repository_impl.dart';
import 'package:supermarket/feature/products/domain/repository/product_repository.dart';
import 'package:supermarket/feature/products/domain/usecases/product_usecase.dart';

import '../../../feature/cart/domain/usecases/cart_use_case.dart';
import '../../../feature/customer/data/data_source/customer_local_data_source.dart';
import '../../../feature/customer/data/data_source/customer_network_data_source.dart';
import '../../../feature/customer/data/models/customer/customer_model.dart';
import '../../../feature/customer/domain/repository/customer_repository.dart';
import '../../../feature/customer/domain/usecases/customer_usecase.dart';
import '../../../feature/order/data/repository/order_repository_impl.dart';
import '../router/router.dart';

final getIt = GetIt.instance;
Future<void> setupServiceLocator() async {
  getIt.registerSingleton<AppRouter>(AppRouter());
  //Product
  getIt.registerSingleton<Box<ProductModel>>(
      await Hive.openBox<ProductModel>(Config.productBox));
  getIt.registerSingleton<ProductNetworkDataSource>(
      ProductNetworkDataSourceImpl(getIt<Box<ProductModel>>()));
  getIt.registerSingleton<ProductLocalDataSource>(
      ProductLocalDataSourceImpl((getIt<Box<ProductModel>>())));
  getIt.registerSingleton<ProductRepository>(ProductRespositoryImpl(
      (getIt<ProductNetworkDataSource>()), getIt<ProductLocalDataSource>()));
  getIt.registerSingleton<ProductUseCase>(
      ProductUseCase((getIt<ProductRepository>())));
  //customer
  getIt.registerSingleton<Box<CustomerModel>>(
      await Hive.openBox<CustomerModel>(Config.customerBox));
  getIt.registerSingleton<CustomerNetworkDataSource>(
      CustomerNetworkDataSourceImpl(getIt<Box<CustomerModel>>()));
  getIt.registerSingleton<CustomerLocalDataSource>(
      CustomerLocalDataSourceImpl(getIt<Box<CustomerModel>>()));
  getIt.registerSingleton<CustomerRepository>(CustomerRepositoryImpl(
      getIt<CustomerLocalDataSource>(), getIt<CustomerNetworkDataSource>()));
  getIt.registerSingleton<CustomerUseCase>(
      CustomerUseCase(getIt<CustomerRepository>()));
  //Cart
  getIt.registerSingleton<Box<CartItemModel>>(
      await Hive.openBox(Config.cartBox));
  getIt.registerSingleton<CartLocalDataSource>(
      CartLocalDataSourceImpl(getIt<Box<CartItemModel>>()));
  getIt.registerSingleton<CartRepository>(
      CartRepositoryImpl(getIt<CartLocalDataSource>()));
  getIt.registerSingleton<CartUseCase>(CartUseCase(getIt<CartRepository>()));
  getIt.registerSingleton<CartBloc>(CartBloc(getIt<CartUseCase>()));
  //Order
  getIt.registerSingleton<OrderNetworkDataSource>(OrderNetworkDataSourceImpl());
  getIt.registerSingleton<OrderRepository>(
      OrderRepositoryImpl(getIt<OrderNetworkDataSource>()));
  getIt.registerSingleton<OrderUsecase>(OrderUsecase(getIt<OrderRepository>()));
}
