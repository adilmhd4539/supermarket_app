part of 'product_bloc.dart';

@freezed
class ProductState with _$ProductState {
  const factory ProductState.initial() = _Initial;
  const factory ProductState.loading() = _loading;
  const factory ProductState.error({required Failure error}) = _error;
  const factory ProductState.listLoadded({required List<Product> prducts}) =
      _listLoadded;
}
