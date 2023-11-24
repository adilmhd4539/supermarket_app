import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:supermarket/core/failure/failure.dart';
import 'package:supermarket/core/handlers/router/router.dart';
import 'package:supermarket/feature/cart/presentations/bloc/cart_bloc.dart';
import 'package:supermarket/feature/order/domain/order_usecase/order_usecase.dart';

import '../../../cart/domain/entities/cart_item/cart_item_entity.dart';

part 'order_event.dart';
part 'order_state.dart';
part 'order_bloc.freezed.dart';

class OrderBloc extends Bloc<OrderEvent, OrderState> {
  final AppRouter _appRouter;
  final OrderUsecase _orderUsecase;
  final CartBloc _cartBloc;
  OrderBloc(this._orderUsecase, this._appRouter, this._cartBloc)
      : super(const _Initial()) {
    on<CreateOrder>(_onCreateOrder);
  }
  FutureOr<void> _onCreateOrder(
      CreateOrder event, Emitter<OrderState> emit) async {
    emit(const _Loading());
    final response = await _orderUsecase.createOrder(
        cart: event.cart, customerId: event.customerId, total: event.total);
    response.fold((error) {
      _showSnackBar(_appRouter.navigatorKey.currentContext!,
          Failure.getErrorMessage(error));
      emit(_Error(error));
    }, (succes) {
      _cartBloc.add(const ClearCart());
      _showSnackBar(
        _appRouter.navigatorKey.currentContext!,
        'OrderCreated  successfully',
      );
      emit(const _Succes());
    });
  }

  void _showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).clearMaterialBanners();
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
    ));
  }
}
