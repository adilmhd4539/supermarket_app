import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supermarket/core/failure/failure.dart';

import '../../domain/entites/product/product_entity.dart';
import '../../domain/usecases/product_usecase.dart';
part 'product_event.dart';
part 'product_state.dart';
part 'product_bloc.freezed.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final ProductUseCase usecase;
  ProductBloc(this.usecase) : super(const _Initial()) {
    on<GetProducts>(_onGetProducts);
  }
  FutureOr<void> _onGetProducts(
      GetProducts event, Emitter<ProductState> emit) async {
    emit(const _loading());
    final response = await usecase.getProducts(searchKey: event.searchKey);
    response.fold((error) => emit(_error(error: error)),
        (products) => emit(_listLoadded(prducts: products)));
  }
}
