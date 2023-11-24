import 'package:hive/hive.dart';
import 'package:supermarket/feature/products/data/models/product/product_model.dart';

abstract class ProductLocalDataSource {
  List<ProductModel> getProducts({String? searchKey});
}

class ProductLocalDataSourceImpl extends ProductLocalDataSource {
  final Box<ProductModel> _box;
  ProductLocalDataSourceImpl(this._box);
  @override
  List<ProductModel> getProducts({String? searchKey}) {
    List<ProductModel> products = [];
    if (searchKey != null) {
      products.addAll(_box.values.where((element) =>
          element.name.toLowerCase().contains(searchKey.toLowerCase())));
    } else {
      products.addAll(_box.values);
    }
    return products;
  }
}
