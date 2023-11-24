import 'package:flutter/material.dart';
import 'package:supermarket/core/failure/failure.dart';
import 'package:supermarket/theme/theme_constats.dart';

class ErrorTile extends StatelessWidget {
  const ErrorTile({super.key, required this.onPressed, required this.error});
  final VoidCallback onPressed;
  final Failure error;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.error,
              color: AppColors.red,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(Failure.getErrorMessage(error)),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(onPressed: onPressed, child: const Text('Retry'))
          ],
        ),
      ),
    );
  }
}
