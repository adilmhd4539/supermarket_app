// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CustomerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? searchKey) getCustomers,
    required TResult Function(CustomerUpdateRequestParam param) addCustomer,
    required TResult Function(CustomerUpdateRequestParam param) updateCustomer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? searchKey)? getCustomers,
    TResult? Function(CustomerUpdateRequestParam param)? addCustomer,
    TResult? Function(CustomerUpdateRequestParam param)? updateCustomer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? searchKey)? getCustomers,
    TResult Function(CustomerUpdateRequestParam param)? addCustomer,
    TResult Function(CustomerUpdateRequestParam param)? updateCustomer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCustomers value) getCustomers,
    required TResult Function(AddCustomer value) addCustomer,
    required TResult Function(UpdateCustomer value) updateCustomer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCustomers value)? getCustomers,
    TResult? Function(AddCustomer value)? addCustomer,
    TResult? Function(UpdateCustomer value)? updateCustomer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCustomers value)? getCustomers,
    TResult Function(AddCustomer value)? addCustomer,
    TResult Function(UpdateCustomer value)? updateCustomer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerEventCopyWith<$Res> {
  factory $CustomerEventCopyWith(
          CustomerEvent value, $Res Function(CustomerEvent) then) =
      _$CustomerEventCopyWithImpl<$Res, CustomerEvent>;
}

/// @nodoc
class _$CustomerEventCopyWithImpl<$Res, $Val extends CustomerEvent>
    implements $CustomerEventCopyWith<$Res> {
  _$CustomerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetCustomersImplCopyWith<$Res> {
  factory _$$GetCustomersImplCopyWith(
          _$GetCustomersImpl value, $Res Function(_$GetCustomersImpl) then) =
      __$$GetCustomersImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? searchKey});
}

/// @nodoc
class __$$GetCustomersImplCopyWithImpl<$Res>
    extends _$CustomerEventCopyWithImpl<$Res, _$GetCustomersImpl>
    implements _$$GetCustomersImplCopyWith<$Res> {
  __$$GetCustomersImplCopyWithImpl(
      _$GetCustomersImpl _value, $Res Function(_$GetCustomersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchKey = freezed,
  }) {
    return _then(_$GetCustomersImpl(
      searchKey: freezed == searchKey
          ? _value.searchKey
          : searchKey // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$GetCustomersImpl implements GetCustomers {
  const _$GetCustomersImpl({this.searchKey});

  @override
  final String? searchKey;

  @override
  String toString() {
    return 'CustomerEvent.getCustomers(searchKey: $searchKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCustomersImpl &&
            (identical(other.searchKey, searchKey) ||
                other.searchKey == searchKey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCustomersImplCopyWith<_$GetCustomersImpl> get copyWith =>
      __$$GetCustomersImplCopyWithImpl<_$GetCustomersImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? searchKey) getCustomers,
    required TResult Function(CustomerUpdateRequestParam param) addCustomer,
    required TResult Function(CustomerUpdateRequestParam param) updateCustomer,
  }) {
    return getCustomers(searchKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? searchKey)? getCustomers,
    TResult? Function(CustomerUpdateRequestParam param)? addCustomer,
    TResult? Function(CustomerUpdateRequestParam param)? updateCustomer,
  }) {
    return getCustomers?.call(searchKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? searchKey)? getCustomers,
    TResult Function(CustomerUpdateRequestParam param)? addCustomer,
    TResult Function(CustomerUpdateRequestParam param)? updateCustomer,
    required TResult orElse(),
  }) {
    if (getCustomers != null) {
      return getCustomers(searchKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCustomers value) getCustomers,
    required TResult Function(AddCustomer value) addCustomer,
    required TResult Function(UpdateCustomer value) updateCustomer,
  }) {
    return getCustomers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCustomers value)? getCustomers,
    TResult? Function(AddCustomer value)? addCustomer,
    TResult? Function(UpdateCustomer value)? updateCustomer,
  }) {
    return getCustomers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCustomers value)? getCustomers,
    TResult Function(AddCustomer value)? addCustomer,
    TResult Function(UpdateCustomer value)? updateCustomer,
    required TResult orElse(),
  }) {
    if (getCustomers != null) {
      return getCustomers(this);
    }
    return orElse();
  }
}

abstract class GetCustomers implements CustomerEvent {
  const factory GetCustomers({final String? searchKey}) = _$GetCustomersImpl;

  String? get searchKey;
  @JsonKey(ignore: true)
  _$$GetCustomersImplCopyWith<_$GetCustomersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddCustomerImplCopyWith<$Res> {
  factory _$$AddCustomerImplCopyWith(
          _$AddCustomerImpl value, $Res Function(_$AddCustomerImpl) then) =
      __$$AddCustomerImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CustomerUpdateRequestParam param});

  $CustomerUpdateRequestParamCopyWith<$Res> get param;
}

/// @nodoc
class __$$AddCustomerImplCopyWithImpl<$Res>
    extends _$CustomerEventCopyWithImpl<$Res, _$AddCustomerImpl>
    implements _$$AddCustomerImplCopyWith<$Res> {
  __$$AddCustomerImplCopyWithImpl(
      _$AddCustomerImpl _value, $Res Function(_$AddCustomerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? param = null,
  }) {
    return _then(_$AddCustomerImpl(
      null == param
          ? _value.param
          : param // ignore: cast_nullable_to_non_nullable
              as CustomerUpdateRequestParam,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CustomerUpdateRequestParamCopyWith<$Res> get param {
    return $CustomerUpdateRequestParamCopyWith<$Res>(_value.param, (value) {
      return _then(_value.copyWith(param: value));
    });
  }
}

/// @nodoc

class _$AddCustomerImpl implements AddCustomer {
  const _$AddCustomerImpl(this.param);

  @override
  final CustomerUpdateRequestParam param;

  @override
  String toString() {
    return 'CustomerEvent.addCustomer(param: $param)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddCustomerImpl &&
            (identical(other.param, param) || other.param == param));
  }

  @override
  int get hashCode => Object.hash(runtimeType, param);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddCustomerImplCopyWith<_$AddCustomerImpl> get copyWith =>
      __$$AddCustomerImplCopyWithImpl<_$AddCustomerImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? searchKey) getCustomers,
    required TResult Function(CustomerUpdateRequestParam param) addCustomer,
    required TResult Function(CustomerUpdateRequestParam param) updateCustomer,
  }) {
    return addCustomer(param);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? searchKey)? getCustomers,
    TResult? Function(CustomerUpdateRequestParam param)? addCustomer,
    TResult? Function(CustomerUpdateRequestParam param)? updateCustomer,
  }) {
    return addCustomer?.call(param);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? searchKey)? getCustomers,
    TResult Function(CustomerUpdateRequestParam param)? addCustomer,
    TResult Function(CustomerUpdateRequestParam param)? updateCustomer,
    required TResult orElse(),
  }) {
    if (addCustomer != null) {
      return addCustomer(param);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCustomers value) getCustomers,
    required TResult Function(AddCustomer value) addCustomer,
    required TResult Function(UpdateCustomer value) updateCustomer,
  }) {
    return addCustomer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCustomers value)? getCustomers,
    TResult? Function(AddCustomer value)? addCustomer,
    TResult? Function(UpdateCustomer value)? updateCustomer,
  }) {
    return addCustomer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCustomers value)? getCustomers,
    TResult Function(AddCustomer value)? addCustomer,
    TResult Function(UpdateCustomer value)? updateCustomer,
    required TResult orElse(),
  }) {
    if (addCustomer != null) {
      return addCustomer(this);
    }
    return orElse();
  }
}

abstract class AddCustomer implements CustomerEvent {
  const factory AddCustomer(final CustomerUpdateRequestParam param) =
      _$AddCustomerImpl;

  CustomerUpdateRequestParam get param;
  @JsonKey(ignore: true)
  _$$AddCustomerImplCopyWith<_$AddCustomerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateCustomerImplCopyWith<$Res> {
  factory _$$UpdateCustomerImplCopyWith(_$UpdateCustomerImpl value,
          $Res Function(_$UpdateCustomerImpl) then) =
      __$$UpdateCustomerImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CustomerUpdateRequestParam param});

  $CustomerUpdateRequestParamCopyWith<$Res> get param;
}

/// @nodoc
class __$$UpdateCustomerImplCopyWithImpl<$Res>
    extends _$CustomerEventCopyWithImpl<$Res, _$UpdateCustomerImpl>
    implements _$$UpdateCustomerImplCopyWith<$Res> {
  __$$UpdateCustomerImplCopyWithImpl(
      _$UpdateCustomerImpl _value, $Res Function(_$UpdateCustomerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? param = null,
  }) {
    return _then(_$UpdateCustomerImpl(
      null == param
          ? _value.param
          : param // ignore: cast_nullable_to_non_nullable
              as CustomerUpdateRequestParam,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CustomerUpdateRequestParamCopyWith<$Res> get param {
    return $CustomerUpdateRequestParamCopyWith<$Res>(_value.param, (value) {
      return _then(_value.copyWith(param: value));
    });
  }
}

/// @nodoc

class _$UpdateCustomerImpl implements UpdateCustomer {
  const _$UpdateCustomerImpl(this.param);

  @override
  final CustomerUpdateRequestParam param;

  @override
  String toString() {
    return 'CustomerEvent.updateCustomer(param: $param)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateCustomerImpl &&
            (identical(other.param, param) || other.param == param));
  }

  @override
  int get hashCode => Object.hash(runtimeType, param);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateCustomerImplCopyWith<_$UpdateCustomerImpl> get copyWith =>
      __$$UpdateCustomerImplCopyWithImpl<_$UpdateCustomerImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? searchKey) getCustomers,
    required TResult Function(CustomerUpdateRequestParam param) addCustomer,
    required TResult Function(CustomerUpdateRequestParam param) updateCustomer,
  }) {
    return updateCustomer(param);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? searchKey)? getCustomers,
    TResult? Function(CustomerUpdateRequestParam param)? addCustomer,
    TResult? Function(CustomerUpdateRequestParam param)? updateCustomer,
  }) {
    return updateCustomer?.call(param);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? searchKey)? getCustomers,
    TResult Function(CustomerUpdateRequestParam param)? addCustomer,
    TResult Function(CustomerUpdateRequestParam param)? updateCustomer,
    required TResult orElse(),
  }) {
    if (updateCustomer != null) {
      return updateCustomer(param);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCustomers value) getCustomers,
    required TResult Function(AddCustomer value) addCustomer,
    required TResult Function(UpdateCustomer value) updateCustomer,
  }) {
    return updateCustomer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCustomers value)? getCustomers,
    TResult? Function(AddCustomer value)? addCustomer,
    TResult? Function(UpdateCustomer value)? updateCustomer,
  }) {
    return updateCustomer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCustomers value)? getCustomers,
    TResult Function(AddCustomer value)? addCustomer,
    TResult Function(UpdateCustomer value)? updateCustomer,
    required TResult orElse(),
  }) {
    if (updateCustomer != null) {
      return updateCustomer(this);
    }
    return orElse();
  }
}

abstract class UpdateCustomer implements CustomerEvent {
  const factory UpdateCustomer(final CustomerUpdateRequestParam param) =
      _$UpdateCustomerImpl;

  CustomerUpdateRequestParam get param;
  @JsonKey(ignore: true)
  _$$UpdateCustomerImplCopyWith<_$UpdateCustomerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CustomerState {
  CustomerBlocSate get customerState => throw _privateConstructorUsedError;
  Failure? get error => throw _privateConstructorUsedError;
  List<Customer> get customerList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CustomerStateCopyWith<CustomerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerStateCopyWith<$Res> {
  factory $CustomerStateCopyWith(
          CustomerState value, $Res Function(CustomerState) then) =
      _$CustomerStateCopyWithImpl<$Res, CustomerState>;
  @useResult
  $Res call(
      {CustomerBlocSate customerState,
      Failure? error,
      List<Customer> customerList});

  $FailureCopyWith<$Res>? get error;
}

/// @nodoc
class _$CustomerStateCopyWithImpl<$Res, $Val extends CustomerState>
    implements $CustomerStateCopyWith<$Res> {
  _$CustomerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerState = null,
    Object? error = freezed,
    Object? customerList = null,
  }) {
    return _then(_value.copyWith(
      customerState: null == customerState
          ? _value.customerState
          : customerState // ignore: cast_nullable_to_non_nullable
              as CustomerBlocSate,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Failure?,
      customerList: null == customerList
          ? _value.customerList
          : customerList // ignore: cast_nullable_to_non_nullable
              as List<Customer>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FailureCopyWith<$Res>? get error {
    if (_value.error == null) {
      return null;
    }

    return $FailureCopyWith<$Res>(_value.error!, (value) {
      return _then(_value.copyWith(error: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CustomerStateImplCopyWith<$Res>
    implements $CustomerStateCopyWith<$Res> {
  factory _$$CustomerStateImplCopyWith(
          _$CustomerStateImpl value, $Res Function(_$CustomerStateImpl) then) =
      __$$CustomerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CustomerBlocSate customerState,
      Failure? error,
      List<Customer> customerList});

  @override
  $FailureCopyWith<$Res>? get error;
}

/// @nodoc
class __$$CustomerStateImplCopyWithImpl<$Res>
    extends _$CustomerStateCopyWithImpl<$Res, _$CustomerStateImpl>
    implements _$$CustomerStateImplCopyWith<$Res> {
  __$$CustomerStateImplCopyWithImpl(
      _$CustomerStateImpl _value, $Res Function(_$CustomerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerState = null,
    Object? error = freezed,
    Object? customerList = null,
  }) {
    return _then(_$CustomerStateImpl(
      customerState: null == customerState
          ? _value.customerState
          : customerState // ignore: cast_nullable_to_non_nullable
              as CustomerBlocSate,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Failure?,
      customerList: null == customerList
          ? _value._customerList
          : customerList // ignore: cast_nullable_to_non_nullable
              as List<Customer>,
    ));
  }
}

/// @nodoc

class _$CustomerStateImpl implements _CustomerState {
  const _$CustomerStateImpl(
      {required this.customerState,
      this.error,
      required final List<Customer> customerList})
      : _customerList = customerList;

  @override
  final CustomerBlocSate customerState;
  @override
  final Failure? error;
  final List<Customer> _customerList;
  @override
  List<Customer> get customerList {
    if (_customerList is EqualUnmodifiableListView) return _customerList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_customerList);
  }

  @override
  String toString() {
    return 'CustomerState(customerState: $customerState, error: $error, customerList: $customerList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerStateImpl &&
            (identical(other.customerState, customerState) ||
                other.customerState == customerState) &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality()
                .equals(other._customerList, _customerList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, customerState, error,
      const DeepCollectionEquality().hash(_customerList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerStateImplCopyWith<_$CustomerStateImpl> get copyWith =>
      __$$CustomerStateImplCopyWithImpl<_$CustomerStateImpl>(this, _$identity);
}

abstract class _CustomerState implements CustomerState {
  const factory _CustomerState(
      {required final CustomerBlocSate customerState,
      final Failure? error,
      required final List<Customer> customerList}) = _$CustomerStateImpl;

  @override
  CustomerBlocSate get customerState;
  @override
  Failure? get error;
  @override
  List<Customer> get customerList;
  @override
  @JsonKey(ignore: true)
  _$$CustomerStateImplCopyWith<_$CustomerStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
