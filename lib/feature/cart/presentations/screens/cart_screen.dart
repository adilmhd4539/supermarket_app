import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supermarket/core/common/dimens.dart';
import 'package:supermarket/core/common/widgets/error_tile.dart';
import 'package:supermarket/core/handlers/router/router.dart';
import 'package:supermarket/feature/cart/domain/entities/cart_item/cart_item_entity.dart';
import 'package:supermarket/feature/cart/presentations/bloc/cart_bloc.dart';
import 'package:supermarket/theme/theme_constats.dart';

import '../../../order/presentations/bloc/order_bloc.dart';
import '../widgets/cart_item_tile.dart';

@RoutePage()
class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  void _onCreateOrder({
    required List<CartItem> cartItems,
    required double total,
  }) {
    if (cartItems.isNotEmpty) {
      context.router.push(CustomerRoute(onCustomerChoosed: (customerId) {
        context.read<OrderBloc>().add(
            CreateOrder(cart: cartItems, customerId: customerId, total: total));
      }));
    }
  }

  void _fecthCart() {
    BlocProvider.of<CartBloc>(context).add(const GetCartItems());
  }

  @override
  void initState() {
    _fecthCart();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            AutoTabsRouter.of(context).setActiveIndex(0);
          },
        ),
        centerTitle: true,
        title: Column(children: [
          Text(
            'Your Cart',
            style: AppTextStyles.bodyLargeSemiBold,
          ),
          Text(
            'Nesto Hypermarket',
            style: AppTextStyles.largeSemiBold,
          )
        ]),
        actions: [
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {},
          )
        ],
      ),
      body: BlocBuilder<CartBloc, CartState>(
        builder: (context, state) {
          switch (state.cartBlocState) {
            case CartBlocState.loading:
              return const Center(
                child: CircularProgressIndicator(),
              );
            case CartBlocState.error:
              return ErrorTile(onPressed: _fecthCart, error: state.failure!);
            default:
              return state.cartItems.isEmpty
                  ? const Center(
                      child: Text('No products available in cart'),
                    )
                  : ListView(
                      padding: const EdgeInsets.all(10),
                      shrinkWrap: true,
                      children: [
                        ListView.separated(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) => CartItemTile(
                            cartItem: state.cartItems[index],
                          ),
                          itemCount: state.cartItems.length,
                          separatorBuilder: (context, index) => const Divider(),
                        ),
                        Dimes.hieght,
                        _buildTotalTile(state.cartItems),
                      ],
                    );
          }
        },
      ),
    );
  }

  Widget _buildTotalTile(List<CartItem> items) {
    double subTotal = 0;
    double tax = 0;
    double total = 0;
    for (final item in items) {
      subTotal += item.product.price * item.quantity;
    }

    if (subTotal > 0) {
      tax = (subTotal * 10) / 100;
    }
    total = subTotal + tax;
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            width: 1,
            color: AppColors.grey,
          )),
      child: Column(
        children: [
          Row(
            children: [
              Text('Sub total', style: AppTextStyles.bodyLargeSemiBold),
              const Spacer(),
              Text(
                '$subTotal',
                style: AppTextStyles.bodyLargeNormal,
              )
            ],
          ),
          Dimes.hieght,
          Row(
            children: [
              Text(
                'Tax',
                style: AppTextStyles.bodyLargeSemiBold,
              ),
              const Spacer(),
              Text(tax.toStringAsFixed(2), style: AppTextStyles.bodyLargeNormal)
            ],
          ),
          Dimes.hieght,
          const Divider(),
          Row(
            children: [
              Text(
                'Total',
                style: AppTextStyles.largeSemiBold,
              ),
              const Spacer(),
              Text(
                '\$${total.toStringAsFixed(2)}',
                style: AppTextStyles.largeSemiBold,
              )
            ],
          ),
          Dimes.hieght,
          BlocBuilder<OrderBloc, OrderState>(
            builder: (context, state) {
              return state.maybeWhen(
                  loading: () => const CircularProgressIndicator(),
                  orElse: () => Row(
                        children: [
                          Expanded(
                              child: ElevatedButton(
                                  onPressed: () {
                                    _onCreateOrder(
                                        cartItems: items, total: total);
                                  },
                                  child: const Text('Order'))),
                          Dimes.width,
                          Expanded(
                              child: ElevatedButton(
                                  onPressed: () {
                                    _onCreateOrder(
                                        cartItems: items, total: total);
                                  },
                                  child: const Text('Order & Deliver'))),
                        ],
                      ));
            },
          )
        ],
      ),
    );
  }
}
