import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supermarket/core/common/dimens.dart';
import 'package:supermarket/core/config/config.dart';
import 'package:supermarket/feature/cart/domain/entities/cart_item/cart_item_entity.dart';
import 'package:supermarket/feature/cart/presentations/bloc/cart_bloc.dart';
import 'package:supermarket/theme/app_theme.dart';
import 'package:supermarket/theme/theme_constats.dart';

import '../../domain/entites/product/product_entity.dart';

class ProductTile extends StatelessWidget {
  final Product product;
  const ProductTile({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: AppColors.white,
          boxShadow: AppTheme.commonBoxShadow),
      child: Column(
        children: [
          Expanded(
              child: CachedNetworkImage(
                  imageUrl: '${Config.domain}${product.image}')),
          IntrinsicHeight(
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        product.name,
                        style: AppTextStyles.bodyLargeSemiBold,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        '\$${product.price}/-',
                        style: AppTextStyles.bodyNormal
                            .copyWith(color: AppColors.grey),
                      ),
                    ],
                  ),
                ),
                Dimes.width,
                VerticalDivider(
                  width: .1,
                  thickness: .1,
                  color: AppColors.grey,
                ),
                Dimes.width,
                _buildAddtoCartButton()
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildAddtoCartButton() {
    return BlocBuilder<CartBloc, CartState>(
      builder: (context, state) {
        CartItem? item;
        int index = state.cartItems
            .indexWhere((element) => element.product.id == product.id);
        if (index != -1) {
          item = state.cartItems[index];
        }
        return item == null
            ? ElevatedButton(
                onPressed: () {
                  _updateCart(context, item, 1);
                },
                child: const Text('Add'))
            : Container(
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
                        _updateCart(context, item, item!.quantity - 1);
                      },
                      child: Icon(
                        Icons.remove,
                        size: 15,
                        color: AppColors.white,
                      ),
                    ),
                    Dimes.width,
                    Text(
                      '${item.quantity}',
                      style: AppTextStyles.bodyNormal
                          .copyWith(color: AppColors.white),
                    ),
                    Dimes.width,
                    InkWell(
                      onTap: () {
                        _updateCart(context, item, item!.quantity + 1);
                      },
                      child: Icon(
                        Icons.add,
                        size: 15,
                        color: AppColors.white,
                      ),
                    )
                  ],
                ),
              );
      },
    );
  }

  void _updateCart(BuildContext context, CartItem? cartItem, int quantity) {
    if (context.read<CartBloc>().state.updatingProductId == null) {
      cartItem ??= CartItem(
          id: BlocProvider.of<CartBloc>(context).state.cartItems.length,
          product: product,
          quantity: quantity);
      context.read<CartBloc>().add(UpdateCart(
              item: cartItem.copyWith(
            quantity: quantity,
          )));
    }
    return;
  }
}
