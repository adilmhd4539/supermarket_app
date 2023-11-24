import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supermarket/core/common/dimens.dart';
import 'package:supermarket/core/common/widgets/error_dailog.dart';
import 'package:supermarket/core/failure/failure.dart';
import 'package:supermarket/feature/customer/data/models/customer_update_request/customer_update_request.dart';
import 'package:supermarket/feature/customer/presentation/bloc/customer_bloc.dart';

import '../../../../theme/theme_constats.dart';
import '../../domain/entities/customer_entity/customer_entity.dart';

ValueNotifier<List<DropdownMenuItem<String>>> cuontryDropDownNotifier =
    ValueNotifier([
  const DropdownMenuItem(
    value: 'India',
    child: Text('India'),
  )
]);
ValueNotifier<List<DropdownMenuItem<String>>> stateDropDownDataNotifier =
    ValueNotifier([
  const DropdownMenuItem(
    value: 'Kerala',
    child: Text('Kerala'),
  )
]);

class UpdateCustomerForm extends StatefulWidget {
  final Customer? customer;
  const UpdateCustomerForm({
    super.key,
    this.customer,
  });

  @override
  State<UpdateCustomerForm> createState() => _UpdateCustomerFormState();
}

class _UpdateCustomerFormState extends State<UpdateCustomerForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _streetController = TextEditingController();
  final TextEditingController _street2Controller = TextEditingController();
  final TextEditingController _cityController = TextEditingController();
  final TextEditingController _pinCodeController = TextEditingController();
  String? _state;
  String? _contry;
  void _preloadData() {
    if (widget.customer != null) {
      _nameController.text = widget.customer!.name;
      _phoneController.text = widget.customer!.mobileNumber;
      _emailController.text = widget.customer!.email;
      _streetController.text = widget.customer!.street;
      _street2Controller.text = widget.customer!.streetTwo;
      _cityController.text = widget.customer!.city;
      _pinCodeController.text = widget.customer!.pincode.toString();

      if (!cuontryDropDownNotifier.value
          .any((element) => element.value == widget.customer!.country)) {
        List<DropdownMenuItem<String>> newList =
            List.from(cuontryDropDownNotifier.value);
        newList.add(DropdownMenuItem(
          value: widget.customer!.country,
          child: Text(widget.customer!.country),
        ));

        cuontryDropDownNotifier.value = newList;
      }
      if (!stateDropDownDataNotifier.value
          .any((element) => element.value == widget.customer!.state)) {
        List<DropdownMenuItem<String>> newList =
            List.from(stateDropDownDataNotifier.value);
        newList.add(DropdownMenuItem(
          value: widget.customer!.state,
          child: Text(widget.customer!.state),
        ));

        stateDropDownDataNotifier.value = newList;
      }

      _state = widget.customer!.state;
      _contry = widget.customer!.country;
    }
  }

  @override
  void initState() {
    _preloadData();
    super.initState();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    _emailController.dispose();
    _streetController.dispose();
    _street2Controller.dispose();
    _cityController.dispose();
    _pinCodeController.dispose();
    super.dispose();
  }

  String? _validateIsEmpty(String? vale) {
    if (vale == null || vale.isEmpty) {
      return 'please fill this field';
    }
    return null;
  }

  String? _validateMobileNumber(String? vale) {
    if (vale == null || vale.isEmpty) {
      return 'please enter your mobile number';
    } else if (vale.length < 10) {
      return 'please enter valid mobile number';
    }
    return null;
  }

  void _addCustomer() {
    context.read<CustomerBloc>().add(AddCustomer(CustomerUpdateRequestParam(
          name: _nameController.text,
          mobileNumber: _phoneController.text,
          email: _emailController.text,
          street: _streetController.text,
          streetTwo: _street2Controller.text,
          city: _cityController.text,
          pincode: _pinCodeController.text,
          state: _state!,
          country: _contry!,
        )));
  }

  void _updateCustomer() {
    context.read<CustomerBloc>().add(UpdateCustomer(CustomerUpdateRequestParam(
          id: widget.customer?.id,
          name: _nameController.text,
          mobileNumber: _phoneController.text,
          email: _emailController.text,
          street: _streetController.text,
          streetTwo: _street2Controller.text,
          city: _cityController.text,
          pincode: _pinCodeController.text,
          state: _state!,
          country: _contry!,
        )));
  }

  String? _emailValidator(String? value) {
    final RegExp emailregex = RegExp('^[\\w-\\.]+@([\\w-]+\\.)+[\\w-]{2,4}\$');
    if (value == null || value.isEmpty) {
      return 'Please Enter your email address';
    } else if (!emailregex.hasMatch(value) || value.length > 100) {
      return 'Please enter a valid email address';
    } else {
      return null;
    }
  }

  void _handleOnError(Failure error) {
    showDialog(
        context: context,
        builder: (context) =>
            ErrorDailog(onPressed: _handleOnSave, failure: error));
  }

  void _handleOnSave() {
    if (_formKey.currentState!.validate()) {
      if (widget.customer == null) {
        _addCustomer();
      } else {
        _updateCustomer();
      }
    }
  }

  void _handleOnSuccess() {
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(widget.customer == null
            ? "Added new customer successfully"
            : "Updated customer successfully")));
    context.popRoute();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Container(
          padding: const EdgeInsets.all(20),
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.vertical(
            top: Radius.circular(20),
          )),
          width: double.infinity,
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      widget.customer == null
                          ? 'Add Customer'
                          : 'Edit Customer',
                      style: AppTextStyles.largeSemiBold,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      context.popRoute();
                    },
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.primary.withOpacity(.2)),
                      child: const Icon(Icons.close),
                    ),
                  )
                ],
              ),
              BlocConsumer<CustomerBloc, CustomerState>(
                listener: (context, state) {
                  switch (state.customerState) {
                    case CustomerBlocSate.isCustomerUpdatingFailed:
                      _handleOnError(state.error!);
                      break;
                    case CustomerBlocSate.isCustomerUpdatingSuccess:
                      _handleOnSuccess();
                      break;

                    default:
                  }
                },
                builder: (context, state) {
                  switch (state.customerState) {
                    case CustomerBlocSate.isCustomerUpdating:
                      return const Expanded(
                        child: Center(
                          child: CircularProgressIndicator(),
                        ),
                      );
                    default:
                      return Expanded(
                          child: Form(
                        key: _formKey,
                        child: ListView(
                          children: [
                            Dimes.hieght,
                            TextFormField(
                              controller: _nameController,
                              validator: _validateIsEmpty,
                              textInputAction: TextInputAction.next,
                              decoration: const InputDecoration(
                                  labelText: 'Customer Name'),
                            ),
                            Dimes.hieght,
                            TextFormField(
                              keyboardType: TextInputType.phone,
                              controller: _phoneController,
                              validator: _validateMobileNumber,
                              textInputAction: TextInputAction.next,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly,
                                LengthLimitingTextInputFormatter(10),
                              ],
                              decoration: const InputDecoration(
                                  labelText: 'Mobile Number'),
                            ),
                            Dimes.hieght,
                            TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              controller: _emailController,
                              validator: _emailValidator,
                              textInputAction: TextInputAction.next,
                              decoration:
                                  const InputDecoration(labelText: 'Email'),
                            ),
                            Dimes.hieght,
                            Text(
                              'Address',
                              style: AppTextStyles.bodyLargeSemiBold,
                            ),
                            Dimes.hieght,
                            Row(
                              children: [
                                Expanded(
                                  child: TextFormField(
                                    controller: _streetController,
                                    validator: _validateIsEmpty,
                                    decoration: const InputDecoration(
                                      labelText: 'Street',
                                    ),
                                  ),
                                ),
                                Dimes.width,
                                Expanded(
                                  child: TextFormField(
                                    controller: _street2Controller,
                                    validator: _validateIsEmpty,
                                    decoration: const InputDecoration(
                                      labelText: 'Street 2',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Dimes.hieght,
                            Row(
                              children: [
                                Expanded(
                                  child: TextFormField(
                                    controller: _cityController,
                                    validator: _validateIsEmpty,
                                    decoration: const InputDecoration(
                                      labelText: 'City',
                                    ),
                                  ),
                                ),
                                Dimes.width,
                                Expanded(
                                  child: TextFormField(
                                    controller: _pinCodeController,
                                    validator: _validateIsEmpty,
                                    decoration: const InputDecoration(
                                      labelText: 'PinCode',
                                    ),
                                    inputFormatters: [
                                      FilteringTextInputFormatter.digitsOnly,
                                      LengthLimitingTextInputFormatter(6),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Dimes.hieght,
                            Row(
                              children: [
                                Expanded(
                                  child: ValueListenableBuilder(
                                    valueListenable: stateDropDownDataNotifier,
                                    builder: (context, value, _) =>
                                        DropdownButtonFormField(
                                      value: _state,
                                      validator: _validateIsEmpty,
                                      onChanged: (value) {
                                        _state = value;
                                      },
                                      items: value,
                                      decoration: const InputDecoration(
                                        labelText: 'State',
                                      ),
                                    ),
                                  ),
                                ),
                                Dimes.width,
                                Expanded(
                                  child: ValueListenableBuilder(
                                    valueListenable: cuontryDropDownNotifier,
                                    builder: (context, value, _) =>
                                        DropdownButtonFormField(
                                      validator: _validateIsEmpty,
                                      value: _contry,
                                      onChanged: (value) {
                                        _contry = value;
                                      },
                                      items: value,
                                      decoration: const InputDecoration(
                                        labelText: 'Country',
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Dimes.hieght,
                            Center(
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      padding: const EdgeInsets.all(15)),
                                  onPressed: _handleOnSave,
                                  child: const Text('Save')),
                            )
                          ],
                        ),
                      ));
                  }
                },
              )
            ],
          )),
    );
  }
}
