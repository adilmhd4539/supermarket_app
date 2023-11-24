import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supermarket/feature/cart/presentations/bloc/cart_bloc.dart';
import 'package:supermarket/feature/customer/domain/usecases/customer_usecase.dart';
import 'package:supermarket/feature/customer/presentation/bloc/customer_bloc.dart';
import 'package:supermarket/feature/order/domain/order_usecase/order_usecase.dart';
import 'package:supermarket/feature/order/presentations/bloc/order_bloc.dart';
import 'package:supermarket/theme/app_theme.dart';

import '../../core/handlers/di/service_locator.dart';
import '../../core/handlers/router/router.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final AppRouter _appRouter = getIt<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (_) => CustomerBloc(
                  getIt<CustomerUseCase>(),
                )),
        BlocProvider(create: (_) => getIt<CartBloc>()),
        BlocProvider(
            create: (_) =>
                OrderBloc(getIt<OrderUsecase>(), _appRouter, getIt<CartBloc>()))
      ],
      child: MaterialApp.router(
        theme: AppTheme.appTheme(),
        debugShowCheckedModeBanner: false,
        title: 'SuperMarket',
        routeInformationParser: _appRouter.defaultRouteParser(
          includePrefixMatches: true,
        ),
        routerDelegate: _appRouter.delegate(),
      ),
    );
  }
}
