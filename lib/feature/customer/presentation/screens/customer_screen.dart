import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supermarket/core/common/dimens.dart';
import 'package:supermarket/core/common/widgets/error_tile.dart';
import 'package:supermarket/core/common/widgets/searching_appbar.dart';
import 'package:supermarket/feature/customer/presentation/bloc/customer_bloc.dart';

import '../widgets/customer_tile.dart';
import '../widgets/customer_update_form.dart';

@RoutePage()
class CustomerScreen extends StatefulWidget {
  final void Function(int customerId)? onCustomerChoosed;
  const CustomerScreen({super.key, this.onCustomerChoosed});

  @override
  State<CustomerScreen> createState() => _CustomerScreenState();
}

class _CustomerScreenState extends State<CustomerScreen> {
  _onAddCustomerTapped() {
    showModalBottomSheet(
        scrollControlDisabledMaxHeightRatio: .7,
        context: context,
        builder: (context) => const UpdateCustomerForm());
  }

  void _fetchCustomers(String searchKey) {
    context
        .read<CustomerBloc>()
        .add(GetCustomers(searchKey: searchKey.isEmpty ? null : searchKey));
  }

  final TextEditingController _searchController = TextEditingController();
  @override
  void initState() {
    _fetchCustomers('');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SearchingAppbar(
          suffixIcon: IconButton(
            icon: const Icon(Icons.add_box),
            onPressed: _onAddCustomerTapped,
          ),
          controller: _searchController,
          onChanged: _fetchCustomers,
          title: widget.onCustomerChoosed != null ? 'New Order' : 'Customers'),
      body: BlocBuilder<CustomerBloc, CustomerState>(
        builder: (context, state) {
          switch (state.customerState) {
            case CustomerBlocSate.fetchingCustomers:
              return const Center(child: CircularProgressIndicator());
            case CustomerBlocSate.dataLoadingError:
              return ErrorTile(
                  onPressed: () {
                    _fetchCustomers(_searchController.text);
                  },
                  error: state.error!);
            default:
              return ListView.separated(
                  padding: const EdgeInsets.all(5),
                  itemBuilder: (context, index) => CustomerTile(
                        customer: state.customerList[index],
                        onCustomerChoosed: widget.onCustomerChoosed,
                      ),
                  separatorBuilder: (context, index) => Dimes.hieght,
                  itemCount: state.customerList.length);
          }
        },
      ),
    );
  }
}
