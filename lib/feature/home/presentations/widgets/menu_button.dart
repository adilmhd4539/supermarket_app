import 'package:flutter/material.dart';

import '../../../../theme/theme_constats.dart';

class MenuButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;
  final String label;
  const MenuButton({
    super.key,
    required this.icon,
    this.onPressed,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            elevation: 5,
            surfaceTintColor: AppColors.white,
            alignment: Alignment.center,
            backgroundColor: AppColors.white,
            foregroundColor: AppColors.primary,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20))),
        onPressed: onPressed,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 40,
              color: AppColors.primary,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              label,
              style: AppTextStyles.bodyLargeSemiBold,
            )
          ],
        ));
  }
}
