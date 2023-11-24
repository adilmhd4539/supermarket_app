part of 'customer_bloc.dart';

@freezed
class CustomerEvent with _$CustomerEvent {
  const factory CustomerEvent.getCustomers({String? searchKey}) = GetCustomers;
  const factory CustomerEvent.addCustomer(CustomerUpdateRequestParam param) =
      AddCustomer;
  const factory CustomerEvent.updateCustomer(CustomerUpdateRequestParam param) =
      UpdateCustomer;
}
