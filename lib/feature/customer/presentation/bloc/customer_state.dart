part of 'customer_bloc.dart';

@freezed
class CustomerState with _$CustomerState {
  const factory CustomerState(
      {required CustomerBlocSate customerState,
      Failure? error,
      required List<Customer> customerList}) = _CustomerState;
  factory CustomerState.initail() => const CustomerState(
      customerState: CustomerBlocSate.initial, customerList: []);
}

enum CustomerBlocSate {
  initial,
  fetchingCustomers,
  dataLoadingError,
  dataLoaded,
  isCustomerUpdating,
  isCustomerUpdatingFailed,
  isCustomerUpdatingSuccess,
}
