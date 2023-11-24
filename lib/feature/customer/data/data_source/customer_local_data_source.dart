import 'package:hive/hive.dart';
import 'package:supermarket/feature/customer/data/models/customer/customer_model.dart';

abstract class CustomerLocalDataSource {
  List<CustomerModel> getCustomers(String? searchKey);
}

class CustomerLocalDataSourceImpl implements CustomerLocalDataSource {
  final Box<CustomerModel> _box;
  CustomerLocalDataSourceImpl(this._box);
  @override
  List<CustomerModel> getCustomers(String? searchKey) {
    List<CustomerModel> customers = [];
    if (searchKey != null) {
      customers.addAll(_box.values.where((element) =>
          element.name.toLowerCase().contains(searchKey.toLowerCase())));
    } else {
      customers.addAll(_box.values);
    }
    return customers;
  }
}
