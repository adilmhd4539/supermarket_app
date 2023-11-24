import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class SearchingAppbar extends StatelessWidget implements PreferredSizeWidget {
  final void Function(String) onChanged;
  final TextEditingController controller;
  final Widget? suffixIcon;
  final String title;
  const SearchingAppbar(
      {super.key,
      required this.controller,
      required this.onChanged,
      this.suffixIcon,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.menu))],
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios),
        onPressed: () {
          _handleOnbackPress(context);
        },
      ),
      toolbarHeight: 95,
      bottom: SearchingAppbarBottom(
        suffixIcon: suffixIcon,
        onChanged: onChanged,
        controller: controller,
      ),
      centerTitle: true,
      title: Text(title),
    );
  }

  _handleOnbackPress(BuildContext context) {
    context.router.pop();
  }

  @override
  Size get preferredSize => const Size.fromHeight(95);
}

class SearchingAppbarBottom extends StatelessWidget
    implements PreferredSizeWidget {
  final void Function(String) onChanged;
  final TextEditingController controller;
  final Widget? suffixIcon;
  const SearchingAppbarBottom(
      {super.key,
      required this.controller,
      required this.onChanged,
      this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Form(
        child: TextFormField(
          controller: controller,
          onChanged: onChanged,
          decoration: InputDecoration(
            prefixIcon: const Icon(Icons.search),
            suffixIcon: suffixIcon,
            hintText: 'Search',
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(20);
}
