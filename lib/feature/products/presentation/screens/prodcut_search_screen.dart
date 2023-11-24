import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supermarket/feature/products/domain/usecases/product_usecase.dart';
import 'package:supermarket/feature/products/presentation/bloc/product_bloc.dart';
import 'package:supermarket/theme/theme_constats.dart';

import '../../../../core/common/widgets/error_tile.dart';
import '../../../../core/handlers/di/service_locator.dart';
import '../../../../core/common/widgets/searching_appbar.dart';
import '../widgets/product_tile.dart';

@RoutePage()
class ProductSearchScreen extends StatefulWidget implements AutoRouteWrapper {
  const ProductSearchScreen({super.key});

  @override
  State<ProductSearchScreen> createState() => _ProductSearchScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductBloc(getIt<ProductUseCase>()),
      child: this,
    );
  }
}

class _ProductSearchScreenState extends State<ProductSearchScreen> {
  final TextEditingController _searchController = TextEditingController();
  @override
  void initState() {
    _featchProducts('');
    super.initState();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _featchProducts(String searchKey) {
    context.read<ProductBloc>().add(GetProducts(
        searchKey: searchKey.isEmpty ? null : searchKey.toUpperCase()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SearchingAppbar(
        title: 'Nesto hypermarket',
        onChanged: _featchProducts,
        controller: _searchController,
      ),
      body: BlocBuilder<ProductBloc, ProductState>(
        builder: (context, state) {
          return state.maybeWhen(
              error: (error) => ErrorTile(
                    onPressed: () {
                      _featchProducts('');
                    },
                    error: error,
                  ),
              orElse: () => const SizedBox(),
              listLoadded: (products) => products.isEmpty
                  ? Center(
                      child: Text(
                      "No products found",
                      style: AppTextStyles.bodyLargeNormal,
                    ))
                  : GridView.builder(
                      padding: const EdgeInsets.all(10),
                      itemCount: products.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              mainAxisSpacing: 10,
                              crossAxisSpacing: 10,
                              crossAxisCount: 2),
                      itemBuilder: (ctx, index) => ProductTile(
                            product: products[index],
                          )),
              loading: () => const Center(
                    child: CircularProgressIndicator(),
                  ));
        },
      ),
    );
  }
}
