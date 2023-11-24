import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:supermarket/core/failure/failure.dart';

import '../dimens.dart';
import 'error_tile.dart';

class ErrorDailog extends StatelessWidget {
  final void Function() onPressed;
  final Failure failure;
  const ErrorDailog(
      {super.key, required this.onPressed, required this.failure});

  @override
  Widget build(BuildContext context) {
    return Dialog(
        child: Container(
      width: double.infinity,
      padding: const EdgeInsets.all(8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: IconButton(
                onPressed: () {
                  context.router.pop();
                },
                icon: const Icon(Icons.close)),
          ),
          Dimes.hieght,
          ErrorTile(
              onPressed: () {
                onPressed();
                context.router.pop();
              },
              error: failure),
        ],
      ),
    ));
  }
}
