
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:supermarket/core/handlers/router/router.dart';

import '../widgets/menu_button.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leadingWidth: 40,
          leading: const Padding(
            padding: EdgeInsets.only(left: 8),
            child: CircleAvatar(
              foregroundImage: CachedNetworkImageProvider(
                'https://t4.ftcdn.net/jpg/03/64/21/11/360_F_364211147_1qgLVxv1Tcq0Ohz3FawUfrtONzz8nq3e.jpg',
              ),
            ),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {},
            )
          ],
        ),
        body: GridView(
          padding: const EdgeInsets.all(10),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: 10, mainAxisSpacing: 10, crossAxisCount: 2),
          children: [
            MenuButton(
              onPressed: () {
                _handleOnCustomerMenuTapped(context);
              },
              label: 'Customers',
              icon: Icons.people,
            ),
            MenuButton(
              onPressed: () {
                _handleOnProdutsMenuTapped(context);
              },
              label: 'Products',
              icon: Icons.shopping_bag,
            ),
            MenuButton(
              onPressed: () {
                _handleOnNewOrderTapped(context);
              },
              label: 'New order',
              icon: Icons.add_box,
            ),
            MenuButton(
              onPressed: () {},
              label: 'Return order',
              icon: Icons.assignment_return,
            ),
            MenuButton(
              onPressed: () {},
              label: 'Add payment',
              icon: Icons.payment,
            ),
            MenuButton(
                onPressed: () {},
                label: 'Todays order',
                icon: Icons.inventory_rounded),
            MenuButton(
                onPressed: () {},
                label: 'Today\'s summery',
                icon: Icons.summarize_outlined),
            MenuButton(onPressed: () {}, label: 'Routex', icon: Icons.route),
          ],
        ));
  }

  void _handleOnProdutsMenuTapped(BuildContext context) {
    context.router.push(const ProductSearchRoute());
  }

  void _handleOnCustomerMenuTapped(BuildContext context) {
    context.router.push(CustomerRoute());
  }

  void _handleOnNewOrderTapped(BuildContext context) {
    context.router.push(const CartRoute());
  }
}
