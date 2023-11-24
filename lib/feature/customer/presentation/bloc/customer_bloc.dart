import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:supermarket/core/failure/failure.dart';
import 'package:supermarket/feature/customer/data/models/customer_update_request/customer_update_request.dart';

import '../../domain/entities/customer_entity/customer_entity.dart';
import '../../domain/usecases/customer_usecase.dart';

part 'customer_event.dart';
part 'customer_state.dart';
part 'customer_bloc.freezed.dart';

class CustomerBloc extends Bloc<CustomerEvent, CustomerState> {
  final CustomerUseCase _customerUseCase;

  CustomerBloc(
    this._customerUseCase,
  ) : super(CustomerState.initail()) {
    on<GetCustomers>(_onGetCustomers);
    on<AddCustomer>(_onAddCustomer);
    on<UpdateCustomer>(_onUpdateCustomer);
  }
  FutureOr<void> _onGetCustomers(
      GetCustomers event, Emitter<CustomerState> emit) async {
    emit(state.copyWith(customerState: CustomerBlocSate.fetchingCustomers));
    final response =
        await _customerUseCase.getCustomers(searchKey: event.searchKey);
    response.fold(
        (error) => emit(state.copyWith(
            customerState: CustomerBlocSate.dataLoadingError, error: error)),
        (customers) => emit(state.copyWith(
            customerState: CustomerBlocSate.dataLoaded,
            customerList: customers)));
  }

  FutureOr<void> _onAddCustomer(
      AddCustomer event, Emitter<CustomerState> emit) async {
    emit(state.copyWith(customerState: CustomerBlocSate.isCustomerUpdating));
    final response = await _customerUseCase.addCustomer(event.param);
    response.fold((error) {
      emit(state.copyWith(
          customerState: CustomerBlocSate.isCustomerUpdatingFailed,
          error: error));
    }, (customer) {
      List<Customer> customers = List.from(state.customerList);
      customers.add(customer);
      emit(state.copyWith(
          customerState: CustomerBlocSate.isCustomerUpdatingSuccess,
          customerList: customers));
    });
  }

  FutureOr<void> _onUpdateCustomer(
      UpdateCustomer event, Emitter<CustomerState> emit) async {
    emit(state.copyWith(customerState: CustomerBlocSate.isCustomerUpdating));
    final response = await _customerUseCase.updateCustomer(event.param);
    response.fold((error) {
      emit(state.copyWith(
          customerState: CustomerBlocSate.isCustomerUpdatingFailed,
          error: error));
    }, (customer) {
      List<Customer> customers = List.from(state.customerList);
      int index =
          customers.indexWhere((element) => element.id == event.param.id);
      customers[index] = customer;
      emit(state.copyWith(
          customerState: CustomerBlocSate.isCustomerUpdatingSuccess,
          customerList: customers));
    });
  }
}
