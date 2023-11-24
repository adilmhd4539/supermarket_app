import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../feature/cart/presentations/screens/cart_screen.dart';
import '../../../feature/customer/presentation/screens/customer_screen.dart';
import '../../../feature/home/presentations/screens/home_screen.dart';
import '../../../feature/home/presentations/screens/main_screen.dart';
import '../../../feature/order/presentations/screens/order_screen.dart';
import '../../../feature/order/presentations/screens/return_order_screen.dart';
import '../../../feature/products/presentation/screens/prodcut_search_screen.dart';
part 'router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: MainRoute.page, initial: true, children: [
          AutoRoute(page: HomeRoute.page, initial: true),
          AutoRoute(page: OrderRoute.page),
          AutoRoute(page: CartRoute.page),
          AutoRoute(page: ReturnOrderRoute.page),
          AutoRoute(page: CustomerRoute.page),
        ]),
        AutoRoute(page: ProductSearchRoute.page),
      ];
}
