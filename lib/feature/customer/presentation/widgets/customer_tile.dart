import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:supermarket/core/common/dimens.dart';
import 'package:supermarket/feature/customer/presentation/widgets/customer_update_form.dart';

import '../../../../core/common/widgets/image_avathar.dart';
import '../../../../core/config/config.dart';
import '../../../../theme/app_theme.dart';
import '../../../../theme/theme_constats.dart';
import '../../domain/entities/customer_entity/customer_entity.dart';

class CustomerTile extends StatelessWidget {
  final Customer customer;
  final void Function(int customerId)? onCustomerChoosed;
  const CustomerTile(
      {super.key, required this.customer, this.onCustomerChoosed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onCustomerChoosed == null
          ? null
          : () {
              onCustomerChoosed!(customer.id); //
              context.router.pop();
            },
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: AppColors.white,
            boxShadow: AppTheme.commonBoxShadow),
        child: IntrinsicHeight(
          child: Row(
            children: [
              Expanded(
                  child: AspectRatio(
                aspectRatio: 1,
                child: CachedNetworkImage(
                  imageUrl: '${Config.domain}${customer.profilePic}',
                  errorWidget: (context, error, _) => const ImageAvathar(),
                ),
              )),
              Dimes.width,
              const VerticalDivider(
                width: .1,
                thickness: .1,
              ),
              Dimes.width,
              Expanded(
                  flex: 3,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                customer.name,
                                style: AppTextStyles.bodyLargeSemiBold,
                              ),
                            ),
                            Dimes.width,
                            IconButton(
                              icon: const Icon(Icons.edit),
                              onPressed: () {
                                _handleOnEdit(context);
                              },
                            ),
                            Dimes.width,
                            Icon(
                              Icons.message_outlined,
                              color: AppColors.green,
                            )
                          ],
                        ),
                        Text('ID : ${customer.id}'),
                        Text(
                            ' ${customer.street},${customer.streetTwo}${customer.state}')
                      ]))
            ],
          ),
        ),
      ),
    );
  }

  void _handleOnEdit(
    BuildContext context,
  ) {
    showModalBottomSheet(
        scrollControlDisabledMaxHeightRatio: .7,
        context: context,
        builder: (context) => UpdateCustomerForm(
              customer: customer,
            ));
  }
}
