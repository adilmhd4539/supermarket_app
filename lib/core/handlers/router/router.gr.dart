// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    CartRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CartScreen(),
      );
    },
    CustomerRoute.name: (routeData) {
      final args = routeData.argsAs<CustomerRouteArgs>(
          orElse: () => const CustomerRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CustomerScreen(
          key: args.key,
          onCustomerChoosed: args.onCustomerChoosed,
        ),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeScreen(),
      );
    },
    MainRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MainScreen(),
      );
    },
    OrderRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OrderScreen(),
      );
    },
    ProductSearchRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(child: const ProductSearchScreen()),
      );
    },
    ReturnOrderRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ReturnOrderScreen(),
      );
    },
  };
}

/// generated route for
/// [CartScreen]
class CartRoute extends PageRouteInfo<void> {
  const CartRoute({List<PageRouteInfo>? children})
      : super(
          CartRoute.name,
          initialChildren: children,
        );

  static const String name = 'CartRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CustomerScreen]
class CustomerRoute extends PageRouteInfo<CustomerRouteArgs> {
  CustomerRoute({
    Key? key,
    void Function(int)? onCustomerChoosed,
    List<PageRouteInfo>? children,
  }) : super(
          CustomerRoute.name,
          args: CustomerRouteArgs(
            key: key,
            onCustomerChoosed: onCustomerChoosed,
          ),
          initialChildren: children,
        );

  static const String name = 'CustomerRoute';

  static const PageInfo<CustomerRouteArgs> page =
      PageInfo<CustomerRouteArgs>(name);
}

class CustomerRouteArgs {
  const CustomerRouteArgs({
    this.key,
    this.onCustomerChoosed,
  });

  final Key? key;

  final void Function(int)? onCustomerChoosed;

  @override
  String toString() {
    return 'CustomerRouteArgs{key: $key, onCustomerChoosed: $onCustomerChoosed}';
  }
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MainScreen]
class MainRoute extends PageRouteInfo<void> {
  const MainRoute({List<PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [OrderScreen]
class OrderRoute extends PageRouteInfo<void> {
  const OrderRoute({List<PageRouteInfo>? children})
      : super(
          OrderRoute.name,
          initialChildren: children,
        );

  static const String name = 'OrderRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProductSearchScreen]
class ProductSearchRoute extends PageRouteInfo<void> {
  const ProductSearchRoute({List<PageRouteInfo>? children})
      : super(
          ProductSearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProductSearchRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ReturnOrderScreen]
class ReturnOrderRoute extends PageRouteInfo<void> {
  const ReturnOrderRoute({List<PageRouteInfo>? children})
      : super(
          ReturnOrderRoute.name,
          initialChildren: children,
        );

  static const String name = 'ReturnOrderRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
