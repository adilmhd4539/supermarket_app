import 'package:hive_flutter/hive_flutter.dart';
import 'package:supermarket/feature/cart/data/model/cart_item/cart_item_model.dart';
import 'package:supermarket/feature/customer/data/models/customer/customer_model.dart';
import 'package:supermarket/feature/products/data/models/product/product_model.dart';

Future<void> registerDb() async {
  await Hive.initFlutter();
  if (!Hive.isAdapterRegistered(ProductModelAdapter().typeId)) {
    Hive.registerAdapter(ProductModelAdapter());
  }
  if (!Hive.isAdapterRegistered(CustomerModelAdapter().typeId)) {
    Hive.registerAdapter(CustomerModelAdapter());
  }
  if (!Hive.isAdapterRegistered(CartItemModelAdapter().typeId)) {
    Hive.registerAdapter(CartItemModelAdapter());
  }
}
