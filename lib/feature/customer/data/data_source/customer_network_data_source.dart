import 'dart:convert';

import 'package:hive/hive.dart';
import 'package:supermarket/core/base/base_data_source.dart';
import 'package:supermarket/feature/customer/data/models/customer/customer_model.dart';

import '../../../../core/common/models/network_response.dart/network_response_model.dart';
import '../../../../core/config/config.dart';
import '../../../../core/failure/failure.dart';
import '../models/customer_update_request/customer_update_request.dart';

abstract class CustomerNetworkDataSource {
  Future<List<CustomerModel>> getCustomers({String? searchKey});
  Future<CustomerModel> addCustomer(CustomerUpdateRequestParam param);
  Future<CustomerModel> updateCustomer(CustomerUpdateRequestParam param);
}

class CustomerNetworkDataSourceImpl extends BaseDataSource
    implements CustomerNetworkDataSource {
  final Box<CustomerModel> _box;
  CustomerNetworkDataSourceImpl(this._box);
  @override
  Future<List<CustomerModel>> getCustomers({String? searchKey}) async {
    try {
      String url = Config.customerEndPoint;
      if (searchKey != null) {
        url = url += "?search_query=$searchKey";
      }
      final response = await api.get(url: url);
      if (response.statusCode == 200) {
        NetWorkResponseModel responseData =
            NetWorkResponseModel.fromJson(jsonDecode(response.body));
        if (responseData.errorCode == 0) {
          List<CustomerModel> customerData =
              (responseData.data as List).map((e) {
            final customer = CustomerModel.fromJson(e);
            _box.put(customer.id, customer);
            return customer;
          }).toList();

          return customerData;
        }
        throw Failure.unknownFailure(message: responseData.message);
      } else {
        throw Failure.unknownFailure(message: response.reasonPhrase);
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<CustomerModel> addCustomer(CustomerUpdateRequestParam param) async {
    try {
      String url = Config.customerEndPoint;
      final response = await api.post(url: url, body: param.toJson());
      if (response.statusCode == 200) {
        NetWorkResponseModel responseData =
            NetWorkResponseModel.fromJson(jsonDecode(response.body));
        if (responseData.errorCode == 0) {
          CustomerModel customer = CustomerModel.fromJson(responseData.data);
          _box.put(customer.id, customer);
          return customer;
        }
        throw Failure.unknownFailure(message: responseData.message);
      } else {
        throw Failure.unknownFailure(message: response.reasonPhrase);
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<CustomerModel> updateCustomer(CustomerUpdateRequestParam param) async {
    try {
      String url = Config.customerEndPoint;
      url = "$url?id=${param.id}";
      final response = await api.put(url: url, body: param.toJson());
      if (response.statusCode == 200) {
        NetWorkResponseModel responseData =
            NetWorkResponseModel.fromJson(jsonDecode(response.body));
        if (responseData.errorCode == 0) {
          CustomerModel customer = CustomerModel.fromJson(responseData.data);
          _box.put(customer.id, customer);
          return customer;
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
