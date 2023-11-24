part of 'order_bloc.dart';

@freezed
class OrderEvent with _$OrderEvent {
  const factory OrderEvent.createOrder({
    required List<CartItem> cart,
    required int customerId,
    required double total,
  }) = CreateOrder;
}
