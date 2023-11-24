import 'dart:convert';

import 'package:supermarket/core/common/models/network_response.dart/network_response_model.dart';
import 'package:supermarket/core/config/config.dart';
import 'package:supermarket/core/failure/failure.dart';
import 'package:supermarket/feature/cart/data/model/cart_item/cart_item_model.dart';

import '../../../../core/base/base_data_source.dart';

abstract class OrderNetworkDataSource {
  Future<bool> createOrder({
    required List<CartItemModel> cart,
    required int customerId,
    required double total,
  });
}

class OrderNetworkDataSourceImpl extends BaseDataSource
    implements OrderNetworkDataSource {
  @override
  Future<bool> createOrder({
    required List<CartItemModel> cart,
    required int customerId,
    required double total,
  }) async {
    try {
      List<Map<String, dynamic>> cartJson = [];
      for (final item in cart) {
        cartJson.add({
          "product_id": item.product.id,
          "quantity": item.quantity,
          "price": item.product.price,
        });
      }
      final Map<String, dynamic> requestJson = {
        "customer_id": customerId,
        "total_price": total,
        "products": cartJson,
      };
      final response =
          await api.post(url: Config.orderEndPoint, body: requestJson);

      if (response.statusCode == 200) {
        final NetWorkResponseModel responseData =
            NetWorkResponseModel.fromJson(jsonDecode(response.body));
        if (responseData.errorCode == 0) {
          return true;
        } else {
          throw Failure.unknownFailure(message: responseData.message);
        }
      } else {
        throw Failure.unknownFailure(message: response.reasonPhrase);
      }
    } catch (e) {
      rethrow;
    }
  }
}
