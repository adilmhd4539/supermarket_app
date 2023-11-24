import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supermarket/core/handlers/router/router.dart';
import 'package:supermarket/theme/theme_constats.dart';

import '../../../cart/presentations/bloc/cart_bloc.dart';

@RoutePage()
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  void _fecthCart() {
    BlocProvider.of<CartBloc>(context).add(const GetCartItems());
  }

  late TabsRouter _tabsRouter;
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
    return AutoTabsRouter.pageView(
        routes: [
          const HomeRoute(),
          const OrderRoute(),
          const CartRoute(),
          const ReturnOrderRoute(),
          CustomerRoute(),
        ],
        builder: (context, child, _) {
          _tabsRouter = AutoTabsRouter.of(context);
          return Scaffold(
            body: child,
            bottomNavigationBar: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius:
                      const BorderRadius.vertical(top: Radius.circular(10)),
                  color: AppColors.white,
                  boxShadow: [
                    BoxShadow(
                        color: AppColors.black.withOpacity(.9),
                        spreadRadius: 0,
                        offset: const Offset(0, 2),
                        blurRadius: 2)
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildBottombarItem(
                      activeIndex: _tabsRouter.activeIndex,
                      nonActiveIcon: Icons.home_outlined,
                      activeIcon: Icons.home_filled,
                      index: 0,
                      label: 'Home'),
                  _buildBottombarItem(
                      activeIndex: _tabsRouter.activeIndex,
                      nonActiveIcon: Icons.add_box_outlined,
                      activeIcon: Icons.add_box,
                      index: 1,
                      label: 'New order'),
                  _buildBottombarCartItem(
                    activeIndex: _tabsRouter.activeIndex,
                    index: 2,
                  ),
                  _buildBottombarItem(
                      activeIndex: _tabsRouter.activeIndex,
                      nonActiveIcon: Icons.assignment_return_outlined,
                      activeIcon: Icons.assignment_return,
                      index: 3,
                      label: 'Return Order'),
                  _buildBottombarItem(
                      activeIndex: _tabsRouter.activeIndex,
                      nonActiveIcon: Icons.people_outline,
                      activeIcon: Icons.people,
                      index: 4,
                      label: 'Customers'),
                ],
              ),
            ),
          );
        });
  }

  _handleOnbottomBartItemTaped({required int index, required int activeIndex}) {
    if (activeIndex != index) {
      _tabsRouter.setActiveIndex(index);
    }
  }

  Widget _buildBottombarItem({
    required int index,
    required int activeIndex,
    required String label,
    required IconData nonActiveIcon,
    required IconData activeIcon,
  }) {
    return InkWell(
      onTap: () {
        _handleOnbottomBartItemTaped(activeIndex: activeIndex, index: index);
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            activeIndex == index ? activeIcon : nonActiveIcon,
            color: AppColors.primary,
          ),
          Text(
            label,
            style: activeIndex == index
                ? AppTextStyles.bodySmallSemiBold
                    .copyWith(color: AppColors.primary)
                : AppTextStyles.bodySmallNormal
                    .copyWith(color: AppColors.primary),
          )
        ],
      ),
    );
  }

  Widget _buildBottombarCartItem({
    required int index,
    required int activeIndex,
  }) {
    return InkWell(
      onTap: () {
        _handleOnbottomBartItemTaped(index: index, activeIndex: activeIndex);
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          BlocBuilder<CartBloc, CartState>(
            builder: (context, state) {
              return Badge(
                isLabelVisible: state.cartItems.isNotEmpty,
                backgroundColor: AppColors.primary,
                label: Text(
                  '${state.cartItems.length}',
                  style: AppTextStyles.bodySmallNormal
                      .copyWith(color: AppColors.white),
                ),
                child: Icon(
                  activeIndex == index
                      ? Icons.shopping_cart
                      : Icons.shopping_cart_outlined,
                ),
              );
            },
          ),
          Text(
            'Cart',
            style: activeIndex == index
                ? AppTextStyles.bodySmallSemiBold
                    .copyWith(color: AppColors.primary)
                : AppTextStyles.bodySmallNormal
                    .copyWith(color: AppColors.primary),
          )
        ],
      ),
    );
  }
}
