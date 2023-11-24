import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supermarket/core/common/dimens.dart';
import 'package:supermarket/feature/cart/domain/entities/cart_item/cart_item_entity.dart';
import 'package:supermarket/feature/cart/presentations/bloc/cart_bloc.dart';

import '../../../../theme/theme_constats.dart';

class CartItemTile extends StatelessWidget {
  final CartItem cartItem;
  const CartItemTile({
    super.key,
    required this.cartItem,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(cartItem.product.name,
                  style: AppTextStyles.bodyLargeSemiBold),
              Dimes.hieght,
              Text('\$${cartItem.product.price}',
                  style: AppTextStyles.bodyLargeNormal)
            ],
          )),
          Dimes.width,
          Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                InkWell(
                  onTap: () {
                    _updateCart(context, cartItem, cartItem.quantity - 1);
                  },
                  child: Icon(
                    Icons.remove,
                    size: 15,
                    color: AppColors.white,
                  ),
                ),
                Dimes.width,
                Text(
                  '${cartItem.quantity}',
                  style:
                      AppTextStyles.bodyNormal.copyWith(color: AppColors.white),
                ),
                Dimes.width,
                InkWell(
                  onTap: () {
                    _updateCart(context, cartItem, cartItem.quantity + 1);
                  },
                  child: Icon(
                    Icons.add,
                    size: 15,
                    color: AppColors.white,
                  ),
                )
              ],
            ),
          ),
          IconButton(
              onPressed: () {
                _updateCart(context, cartItem, 0);
              },
              icon: Icon(
                Icons.delete,
                color: AppColors.red,
              ))
        ],
      ),
    );
  }
}

void _updateCart(BuildContext context, CartItem item, int quantity) {
  context
      .read<CartBloc>()
      .add(UpdateCart(item: item.copyWith(quantity: quantity)));
}
