import 'dart:convert';

import 'package:hive/hive.dart';
import 'package:supermarket/core/base/base_data_source.dart';
import 'package:supermarket/core/common/models/network_response.dart/network_response_model.dart';
import 'package:supermarket/core/config/config.dart';
import 'package:supermarket/core/failure/failure.dart';
import 'package:supermarket/feature/products/data/models/product/product_model.dart';

abstract class ProductNetworkDataSource {
  Future<List<ProductModel>> getProducts({String? searchKey});
}

class ProductNetworkDataSourceImpl extends BaseDataSource
    implements ProductNetworkDataSource {
  final Box<ProductModel> _box;
  ProductNetworkDataSourceImpl(this._box);
  @override
  Future<List<ProductModel>> getProducts({String? searchKey}) async {
    try {
      String url = Config.productsEndPoint;
      if (searchKey != null) {
        url = url += "?search_query=$searchKey";
      }
      final response = await api.get(url: url);
      if (response.statusCode == 200) {
        NetWorkResponseModel responseData =
            NetWorkResponseModel.fromJson(jsonDecode(response.body));
        if (responseData.errorCode == 0) {
          List<ProductModel> productData = (responseData.data as List).map((e) {
            final product = ProductModel.fromJson(e);
            _box.put(product.id, product);
            return product;
          }).toList();

          return productData;
        }
        throw Failure.unknownFailure(message: responseData.message);
      } else {
        throw Failure.unknownFailure(message: response.reasonPhrase);
      }
    } catch (e) {
      rethrow;
    }
  }
}
