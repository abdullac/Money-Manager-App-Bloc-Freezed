// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_transaction_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddTransactionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TransactionModel transactionModel)
        saveTransaction,
    required TResult Function(TransactionType? transactionType)
        radioButtonUiChange,
    required TResult Function(String? dropDownButtonValue)
        dropDownButtonUiChange,
    required TResult Function(DateTime? selectedDate) selectDateUiChange,
    required TResult Function(TransactionModel transactionModel) editItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TransactionModel transactionModel)? saveTransaction,
    TResult? Function(TransactionType? transactionType)? radioButtonUiChange,
    TResult? Function(String? dropDownButtonValue)? dropDownButtonUiChange,
    TResult? Function(DateTime? selectedDate)? selectDateUiChange,
    TResult? Function(TransactionModel transactionModel)? editItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TransactionModel transactionModel)? saveTransaction,
    TResult Function(TransactionType? transactionType)? radioButtonUiChange,
    TResult Function(String? dropDownButtonValue)? dropDownButtonUiChange,
    TResult Function(DateTime? selectedDate)? selectDateUiChange,
    TResult Function(TransactionModel transactionModel)? editItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveTransaction value) saveTransaction,
    required TResult Function(RadioButtonUiChange value) radioButtonUiChange,
    required TResult Function(DropDownButtonUiChange value)
        dropDownButtonUiChange,
    required TResult Function(SelectDateUiChange value) selectDateUiChange,
    required TResult Function(EditItem value) editItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SaveTransaction value)? saveTransaction,
    TResult? Function(RadioButtonUiChange value)? radioButtonUiChange,
    TResult? Function(DropDownButtonUiChange value)? dropDownButtonUiChange,
    TResult? Function(SelectDateUiChange value)? selectDateUiChange,
    TResult? Function(EditItem value)? editItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveTransaction value)? saveTransaction,
    TResult Function(RadioButtonUiChange value)? radioButtonUiChange,
    TResult Function(DropDownButtonUiChange value)? dropDownButtonUiChange,
    TResult Function(SelectDateUiChange value)? selectDateUiChange,
    TResult Function(EditItem value)? editItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddTransactionEventCopyWith<$Res> {
  factory $AddTransactionEventCopyWith(
          AddTransactionEvent value, $Res Function(AddTransactionEvent) then) =
      _$AddTransactionEventCopyWithImpl<$Res, AddTransactionEvent>;
}

/// @nodoc
class _$AddTransactionEventCopyWithImpl<$Res, $Val extends AddTransactionEvent>
    implements $AddTransactionEventCopyWith<$Res> {
  _$AddTransactionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SaveTransactionCopyWith<$Res> {
  factory _$$SaveTransactionCopyWith(
          _$SaveTransaction value, $Res Function(_$SaveTransaction) then) =
      __$$SaveTransactionCopyWithImpl<$Res>;
  @useResult
  $Res call({TransactionModel transactionModel});

  $TransactionModelCopyWith<$Res> get transactionModel;
}

/// @nodoc
class __$$SaveTransactionCopyWithImpl<$Res>
    extends _$AddTransactionEventCopyWithImpl<$Res, _$SaveTransaction>
    implements _$$SaveTransactionCopyWith<$Res> {
  __$$SaveTransactionCopyWithImpl(
      _$SaveTransaction _value, $Res Function(_$SaveTransaction) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionModel = null,
  }) {
    return _then(_$SaveTransaction(
      transactionModel: null == transactionModel
          ? _value.transactionModel
          : transactionModel // ignore: cast_nullable_to_non_nullable
              as TransactionModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TransactionModelCopyWith<$Res> get transactionModel {
    return $TransactionModelCopyWith<$Res>(_value.transactionModel, (value) {
      return _then(_value.copyWith(transactionModel: value));
    });
  }
}

/// @nodoc

class _$SaveTransaction implements SaveTransaction {
  const _$SaveTransaction({required this.transactionModel});

  @override
  final TransactionModel transactionModel;

  @override
  String toString() {
    return 'AddTransactionEvent.saveTransaction(transactionModel: $transactionModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveTransaction &&
            (identical(other.transactionModel, transactionModel) ||
                other.transactionModel == transactionModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, transactionModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveTransactionCopyWith<_$SaveTransaction> get copyWith =>
      __$$SaveTransactionCopyWithImpl<_$SaveTransaction>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TransactionModel transactionModel)
        saveTransaction,
    required TResult Function(TransactionType? transactionType)
        radioButtonUiChange,
    required TResult Function(String? dropDownButtonValue)
        dropDownButtonUiChange,
    required TResult Function(DateTime? selectedDate) selectDateUiChange,
    required TResult Function(TransactionModel transactionModel) editItem,
  }) {
    return saveTransaction(transactionModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TransactionModel transactionModel)? saveTransaction,
    TResult? Function(TransactionType? transactionType)? radioButtonUiChange,
    TResult? Function(String? dropDownButtonValue)? dropDownButtonUiChange,
    TResult? Function(DateTime? selectedDate)? selectDateUiChange,
    TResult? Function(TransactionModel transactionModel)? editItem,
  }) {
    return saveTransaction?.call(transactionModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TransactionModel transactionModel)? saveTransaction,
    TResult Function(TransactionType? transactionType)? radioButtonUiChange,
    TResult Function(String? dropDownButtonValue)? dropDownButtonUiChange,
    TResult Function(DateTime? selectedDate)? selectDateUiChange,
    TResult Function(TransactionModel transactionModel)? editItem,
    required TResult orElse(),
  }) {
    if (saveTransaction != null) {
      return saveTransaction(transactionModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveTransaction value) saveTransaction,
    required TResult Function(RadioButtonUiChange value) radioButtonUiChange,
    required TResult Function(DropDownButtonUiChange value)
        dropDownButtonUiChange,
    required TResult Function(SelectDateUiChange value) selectDateUiChange,
    required TResult Function(EditItem value) editItem,
  }) {
    return saveTransaction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SaveTransaction value)? saveTransaction,
    TResult? Function(RadioButtonUiChange value)? radioButtonUiChange,
    TResult? Function(DropDownButtonUiChange value)? dropDownButtonUiChange,
    TResult? Function(SelectDateUiChange value)? selectDateUiChange,
    TResult? Function(EditItem value)? editItem,
  }) {
    return saveTransaction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveTransaction value)? saveTransaction,
    TResult Function(RadioButtonUiChange value)? radioButtonUiChange,
    TResult Function(DropDownButtonUiChange value)? dropDownButtonUiChange,
    TResult Function(SelectDateUiChange value)? selectDateUiChange,
    TResult Function(EditItem value)? editItem,
    required TResult orElse(),
  }) {
    if (saveTransaction != null) {
      return saveTransaction(this);
    }
    return orElse();
  }
}

abstract class SaveTransaction implements AddTransactionEvent {
  const factory SaveTransaction(
      {required final TransactionModel transactionModel}) = _$SaveTransaction;

  TransactionModel get transactionModel;
  @JsonKey(ignore: true)
  _$$SaveTransactionCopyWith<_$SaveTransaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RadioButtonUiChangeCopyWith<$Res> {
  factory _$$RadioButtonUiChangeCopyWith(_$RadioButtonUiChange value,
          $Res Function(_$RadioButtonUiChange) then) =
      __$$RadioButtonUiChangeCopyWithImpl<$Res>;
  @useResult
  $Res call({TransactionType? transactionType});
}

/// @nodoc
class __$$RadioButtonUiChangeCopyWithImpl<$Res>
    extends _$AddTransactionEventCopyWithImpl<$Res, _$RadioButtonUiChange>
    implements _$$RadioButtonUiChangeCopyWith<$Res> {
  __$$RadioButtonUiChangeCopyWithImpl(
      _$RadioButtonUiChange _value, $Res Function(_$RadioButtonUiChange) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionType = freezed,
  }) {
    return _then(_$RadioButtonUiChange(
      transactionType: freezed == transactionType
          ? _value.transactionType
          : transactionType // ignore: cast_nullable_to_non_nullable
              as TransactionType?,
    ));
  }
}

/// @nodoc

class _$RadioButtonUiChange implements RadioButtonUiChange {
  const _$RadioButtonUiChange({required this.transactionType});

  @override
  final TransactionType? transactionType;

  @override
  String toString() {
    return 'AddTransactionEvent.radioButtonUiChange(transactionType: $transactionType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RadioButtonUiChange &&
            (identical(other.transactionType, transactionType) ||
                other.transactionType == transactionType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, transactionType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RadioButtonUiChangeCopyWith<_$RadioButtonUiChange> get copyWith =>
      __$$RadioButtonUiChangeCopyWithImpl<_$RadioButtonUiChange>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TransactionModel transactionModel)
        saveTransaction,
    required TResult Function(TransactionType? transactionType)
        radioButtonUiChange,
    required TResult Function(String? dropDownButtonValue)
        dropDownButtonUiChange,
    required TResult Function(DateTime? selectedDate) selectDateUiChange,
    required TResult Function(TransactionModel transactionModel) editItem,
  }) {
    return radioButtonUiChange(transactionType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TransactionModel transactionModel)? saveTransaction,
    TResult? Function(TransactionType? transactionType)? radioButtonUiChange,
    TResult? Function(String? dropDownButtonValue)? dropDownButtonUiChange,
    TResult? Function(DateTime? selectedDate)? selectDateUiChange,
    TResult? Function(TransactionModel transactionModel)? editItem,
  }) {
    return radioButtonUiChange?.call(transactionType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TransactionModel transactionModel)? saveTransaction,
    TResult Function(TransactionType? transactionType)? radioButtonUiChange,
    TResult Function(String? dropDownButtonValue)? dropDownButtonUiChange,
    TResult Function(DateTime? selectedDate)? selectDateUiChange,
    TResult Function(TransactionModel transactionModel)? editItem,
    required TResult orElse(),
  }) {
    if (radioButtonUiChange != null) {
      return radioButtonUiChange(transactionType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveTransaction value) saveTransaction,
    required TResult Function(RadioButtonUiChange value) radioButtonUiChange,
    required TResult Function(DropDownButtonUiChange value)
        dropDownButtonUiChange,
    required TResult Function(SelectDateUiChange value) selectDateUiChange,
    required TResult Function(EditItem value) editItem,
  }) {
    return radioButtonUiChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SaveTransaction value)? saveTransaction,
    TResult? Function(RadioButtonUiChange value)? radioButtonUiChange,
    TResult? Function(DropDownButtonUiChange value)? dropDownButtonUiChange,
    TResult? Function(SelectDateUiChange value)? selectDateUiChange,
    TResult? Function(EditItem value)? editItem,
  }) {
    return radioButtonUiChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveTransaction value)? saveTransaction,
    TResult Function(RadioButtonUiChange value)? radioButtonUiChange,
    TResult Function(DropDownButtonUiChange value)? dropDownButtonUiChange,
    TResult Function(SelectDateUiChange value)? selectDateUiChange,
    TResult Function(EditItem value)? editItem,
    required TResult orElse(),
  }) {
    if (radioButtonUiChange != null) {
      return radioButtonUiChange(this);
    }
    return orElse();
  }
}

abstract class RadioButtonUiChange implements AddTransactionEvent {
  const factory RadioButtonUiChange(
          {required final TransactionType? transactionType}) =
      _$RadioButtonUiChange;

  TransactionType? get transactionType;
  @JsonKey(ignore: true)
  _$$RadioButtonUiChangeCopyWith<_$RadioButtonUiChange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DropDownButtonUiChangeCopyWith<$Res> {
  factory _$$DropDownButtonUiChangeCopyWith(_$DropDownButtonUiChange value,
          $Res Function(_$DropDownButtonUiChange) then) =
      __$$DropDownButtonUiChangeCopyWithImpl<$Res>;
  @useResult
  $Res call({String? dropDownButtonValue});
}

/// @nodoc
class __$$DropDownButtonUiChangeCopyWithImpl<$Res>
    extends _$AddTransactionEventCopyWithImpl<$Res, _$DropDownButtonUiChange>
    implements _$$DropDownButtonUiChangeCopyWith<$Res> {
  __$$DropDownButtonUiChangeCopyWithImpl(_$DropDownButtonUiChange _value,
      $Res Function(_$DropDownButtonUiChange) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dropDownButtonValue = freezed,
  }) {
    return _then(_$DropDownButtonUiChange(
      dropDownButtonValue: freezed == dropDownButtonValue
          ? _value.dropDownButtonValue
          : dropDownButtonValue // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$DropDownButtonUiChange implements DropDownButtonUiChange {
  const _$DropDownButtonUiChange({required this.dropDownButtonValue});

  @override
  final String? dropDownButtonValue;

  @override
  String toString() {
    return 'AddTransactionEvent.dropDownButtonUiChange(dropDownButtonValue: $dropDownButtonValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DropDownButtonUiChange &&
            (identical(other.dropDownButtonValue, dropDownButtonValue) ||
                other.dropDownButtonValue == dropDownButtonValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dropDownButtonValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DropDownButtonUiChangeCopyWith<_$DropDownButtonUiChange> get copyWith =>
      __$$DropDownButtonUiChangeCopyWithImpl<_$DropDownButtonUiChange>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TransactionModel transactionModel)
        saveTransaction,
    required TResult Function(TransactionType? transactionType)
        radioButtonUiChange,
    required TResult Function(String? dropDownButtonValue)
        dropDownButtonUiChange,
    required TResult Function(DateTime? selectedDate) selectDateUiChange,
    required TResult Function(TransactionModel transactionModel) editItem,
  }) {
    return dropDownButtonUiChange(dropDownButtonValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TransactionModel transactionModel)? saveTransaction,
    TResult? Function(TransactionType? transactionType)? radioButtonUiChange,
    TResult? Function(String? dropDownButtonValue)? dropDownButtonUiChange,
    TResult? Function(DateTime? selectedDate)? selectDateUiChange,
    TResult? Function(TransactionModel transactionModel)? editItem,
  }) {
    return dropDownButtonUiChange?.call(dropDownButtonValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TransactionModel transactionModel)? saveTransaction,
    TResult Function(TransactionType? transactionType)? radioButtonUiChange,
    TResult Function(String? dropDownButtonValue)? dropDownButtonUiChange,
    TResult Function(DateTime? selectedDate)? selectDateUiChange,
    TResult Function(TransactionModel transactionModel)? editItem,
    required TResult orElse(),
  }) {
    if (dropDownButtonUiChange != null) {
      return dropDownButtonUiChange(dropDownButtonValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveTransaction value) saveTransaction,
    required TResult Function(RadioButtonUiChange value) radioButtonUiChange,
    required TResult Function(DropDownButtonUiChange value)
        dropDownButtonUiChange,
    required TResult Function(SelectDateUiChange value) selectDateUiChange,
    required TResult Function(EditItem value) editItem,
  }) {
    return dropDownButtonUiChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SaveTransaction value)? saveTransaction,
    TResult? Function(RadioButtonUiChange value)? radioButtonUiChange,
    TResult? Function(DropDownButtonUiChange value)? dropDownButtonUiChange,
    TResult? Function(SelectDateUiChange value)? selectDateUiChange,
    TResult? Function(EditItem value)? editItem,
  }) {
    return dropDownButtonUiChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveTransaction value)? saveTransaction,
    TResult Function(RadioButtonUiChange value)? radioButtonUiChange,
    TResult Function(DropDownButtonUiChange value)? dropDownButtonUiChange,
    TResult Function(SelectDateUiChange value)? selectDateUiChange,
    TResult Function(EditItem value)? editItem,
    required TResult orElse(),
  }) {
    if (dropDownButtonUiChange != null) {
      return dropDownButtonUiChange(this);
    }
    return orElse();
  }
}

abstract class DropDownButtonUiChange implements AddTransactionEvent {
  const factory DropDownButtonUiChange(
      {required final String? dropDownButtonValue}) = _$DropDownButtonUiChange;

  String? get dropDownButtonValue;
  @JsonKey(ignore: true)
  _$$DropDownButtonUiChangeCopyWith<_$DropDownButtonUiChange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectDateUiChangeCopyWith<$Res> {
  factory _$$SelectDateUiChangeCopyWith(_$SelectDateUiChange value,
          $Res Function(_$SelectDateUiChange) then) =
      __$$SelectDateUiChangeCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime? selectedDate});
}

/// @nodoc
class __$$SelectDateUiChangeCopyWithImpl<$Res>
    extends _$AddTransactionEventCopyWithImpl<$Res, _$SelectDateUiChange>
    implements _$$SelectDateUiChangeCopyWith<$Res> {
  __$$SelectDateUiChangeCopyWithImpl(
      _$SelectDateUiChange _value, $Res Function(_$SelectDateUiChange) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedDate = freezed,
  }) {
    return _then(_$SelectDateUiChange(
      selectedDate: freezed == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$SelectDateUiChange implements SelectDateUiChange {
  const _$SelectDateUiChange({required this.selectedDate});

  @override
  final DateTime? selectedDate;

  @override
  String toString() {
    return 'AddTransactionEvent.selectDateUiChange(selectedDate: $selectedDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectDateUiChange &&
            (identical(other.selectedDate, selectedDate) ||
                other.selectedDate == selectedDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectDateUiChangeCopyWith<_$SelectDateUiChange> get copyWith =>
      __$$SelectDateUiChangeCopyWithImpl<_$SelectDateUiChange>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TransactionModel transactionModel)
        saveTransaction,
    required TResult Function(TransactionType? transactionType)
        radioButtonUiChange,
    required TResult Function(String? dropDownButtonValue)
        dropDownButtonUiChange,
    required TResult Function(DateTime? selectedDate) selectDateUiChange,
    required TResult Function(TransactionModel transactionModel) editItem,
  }) {
    return selectDateUiChange(selectedDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TransactionModel transactionModel)? saveTransaction,
    TResult? Function(TransactionType? transactionType)? radioButtonUiChange,
    TResult? Function(String? dropDownButtonValue)? dropDownButtonUiChange,
    TResult? Function(DateTime? selectedDate)? selectDateUiChange,
    TResult? Function(TransactionModel transactionModel)? editItem,
  }) {
    return selectDateUiChange?.call(selectedDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TransactionModel transactionModel)? saveTransaction,
    TResult Function(TransactionType? transactionType)? radioButtonUiChange,
    TResult Function(String? dropDownButtonValue)? dropDownButtonUiChange,
    TResult Function(DateTime? selectedDate)? selectDateUiChange,
    TResult Function(TransactionModel transactionModel)? editItem,
    required TResult orElse(),
  }) {
    if (selectDateUiChange != null) {
      return selectDateUiChange(selectedDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveTransaction value) saveTransaction,
    required TResult Function(RadioButtonUiChange value) radioButtonUiChange,
    required TResult Function(DropDownButtonUiChange value)
        dropDownButtonUiChange,
    required TResult Function(SelectDateUiChange value) selectDateUiChange,
    required TResult Function(EditItem value) editItem,
  }) {
    return selectDateUiChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SaveTransaction value)? saveTransaction,
    TResult? Function(RadioButtonUiChange value)? radioButtonUiChange,
    TResult? Function(DropDownButtonUiChange value)? dropDownButtonUiChange,
    TResult? Function(SelectDateUiChange value)? selectDateUiChange,
    TResult? Function(EditItem value)? editItem,
  }) {
    return selectDateUiChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveTransaction value)? saveTransaction,
    TResult Function(RadioButtonUiChange value)? radioButtonUiChange,
    TResult Function(DropDownButtonUiChange value)? dropDownButtonUiChange,
    TResult Function(SelectDateUiChange value)? selectDateUiChange,
    TResult Function(EditItem value)? editItem,
    required TResult orElse(),
  }) {
    if (selectDateUiChange != null) {
      return selectDateUiChange(this);
    }
    return orElse();
  }
}

abstract class SelectDateUiChange implements AddTransactionEvent {
  const factory SelectDateUiChange({required final DateTime? selectedDate}) =
      _$SelectDateUiChange;

  DateTime? get selectedDate;
  @JsonKey(ignore: true)
  _$$SelectDateUiChangeCopyWith<_$SelectDateUiChange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditItemCopyWith<$Res> {
  factory _$$EditItemCopyWith(
          _$EditItem value, $Res Function(_$EditItem) then) =
      __$$EditItemCopyWithImpl<$Res>;
  @useResult
  $Res call({TransactionModel transactionModel});

  $TransactionModelCopyWith<$Res> get transactionModel;
}

/// @nodoc
class __$$EditItemCopyWithImpl<$Res>
    extends _$AddTransactionEventCopyWithImpl<$Res, _$EditItem>
    implements _$$EditItemCopyWith<$Res> {
  __$$EditItemCopyWithImpl(_$EditItem _value, $Res Function(_$EditItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionModel = null,
  }) {
    return _then(_$EditItem(
      transactionModel: null == transactionModel
          ? _value.transactionModel
          : transactionModel // ignore: cast_nullable_to_non_nullable
              as TransactionModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TransactionModelCopyWith<$Res> get transactionModel {
    return $TransactionModelCopyWith<$Res>(_value.transactionModel, (value) {
      return _then(_value.copyWith(transactionModel: value));
    });
  }
}

/// @nodoc

class _$EditItem implements EditItem {
  const _$EditItem({required this.transactionModel});

  @override
  final TransactionModel transactionModel;

  @override
  String toString() {
    return 'AddTransactionEvent.editItem(transactionModel: $transactionModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditItem &&
            (identical(other.transactionModel, transactionModel) ||
                other.transactionModel == transactionModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, transactionModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditItemCopyWith<_$EditItem> get copyWith =>
      __$$EditItemCopyWithImpl<_$EditItem>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TransactionModel transactionModel)
        saveTransaction,
    required TResult Function(TransactionType? transactionType)
        radioButtonUiChange,
    required TResult Function(String? dropDownButtonValue)
        dropDownButtonUiChange,
    required TResult Function(DateTime? selectedDate) selectDateUiChange,
    required TResult Function(TransactionModel transactionModel) editItem,
  }) {
    return editItem(transactionModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TransactionModel transactionModel)? saveTransaction,
    TResult? Function(TransactionType? transactionType)? radioButtonUiChange,
    TResult? Function(String? dropDownButtonValue)? dropDownButtonUiChange,
    TResult? Function(DateTime? selectedDate)? selectDateUiChange,
    TResult? Function(TransactionModel transactionModel)? editItem,
  }) {
    return editItem?.call(transactionModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TransactionModel transactionModel)? saveTransaction,
    TResult Function(TransactionType? transactionType)? radioButtonUiChange,
    TResult Function(String? dropDownButtonValue)? dropDownButtonUiChange,
    TResult Function(DateTime? selectedDate)? selectDateUiChange,
    TResult Function(TransactionModel transactionModel)? editItem,
    required TResult orElse(),
  }) {
    if (editItem != null) {
      return editItem(transactionModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveTransaction value) saveTransaction,
    required TResult Function(RadioButtonUiChange value) radioButtonUiChange,
    required TResult Function(DropDownButtonUiChange value)
        dropDownButtonUiChange,
    required TResult Function(SelectDateUiChange value) selectDateUiChange,
    required TResult Function(EditItem value) editItem,
  }) {
    return editItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SaveTransaction value)? saveTransaction,
    TResult? Function(RadioButtonUiChange value)? radioButtonUiChange,
    TResult? Function(DropDownButtonUiChange value)? dropDownButtonUiChange,
    TResult? Function(SelectDateUiChange value)? selectDateUiChange,
    TResult? Function(EditItem value)? editItem,
  }) {
    return editItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveTransaction value)? saveTransaction,
    TResult Function(RadioButtonUiChange value)? radioButtonUiChange,
    TResult Function(DropDownButtonUiChange value)? dropDownButtonUiChange,
    TResult Function(SelectDateUiChange value)? selectDateUiChange,
    TResult Function(EditItem value)? editItem,
    required TResult orElse(),
  }) {
    if (editItem != null) {
      return editItem(this);
    }
    return orElse();
  }
}

abstract class EditItem implements AddTransactionEvent {
  const factory EditItem({required final TransactionModel transactionModel}) =
      _$EditItem;

  TransactionModel get transactionModel;
  @JsonKey(ignore: true)
  _$$EditItemCopyWith<_$EditItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddTransactionState {
// required String amount,
  TransactionType? get transactiontype => throw _privateConstructorUsedError;
  String? get dropDownButtonValue => throw _privateConstructorUsedError;
  DateTime? get selectedDate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddTransactionStateCopyWith<AddTransactionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddTransactionStateCopyWith<$Res> {
  factory $AddTransactionStateCopyWith(
          AddTransactionState value, $Res Function(AddTransactionState) then) =
      _$AddTransactionStateCopyWithImpl<$Res, AddTransactionState>;
  @useResult
  $Res call(
      {TransactionType? transactiontype,
      String? dropDownButtonValue,
      DateTime? selectedDate});
}

/// @nodoc
class _$AddTransactionStateCopyWithImpl<$Res, $Val extends AddTransactionState>
    implements $AddTransactionStateCopyWith<$Res> {
  _$AddTransactionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactiontype = freezed,
    Object? dropDownButtonValue = freezed,
    Object? selectedDate = freezed,
  }) {
    return _then(_value.copyWith(
      transactiontype: freezed == transactiontype
          ? _value.transactiontype
          : transactiontype // ignore: cast_nullable_to_non_nullable
              as TransactionType?,
      dropDownButtonValue: freezed == dropDownButtonValue
          ? _value.dropDownButtonValue
          : dropDownButtonValue // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedDate: freezed == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddTransactionStateCopyWith<$Res>
    implements $AddTransactionStateCopyWith<$Res> {
  factory _$$_AddTransactionStateCopyWith(_$_AddTransactionState value,
          $Res Function(_$_AddTransactionState) then) =
      __$$_AddTransactionStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TransactionType? transactiontype,
      String? dropDownButtonValue,
      DateTime? selectedDate});
}

/// @nodoc
class __$$_AddTransactionStateCopyWithImpl<$Res>
    extends _$AddTransactionStateCopyWithImpl<$Res, _$_AddTransactionState>
    implements _$$_AddTransactionStateCopyWith<$Res> {
  __$$_AddTransactionStateCopyWithImpl(_$_AddTransactionState _value,
      $Res Function(_$_AddTransactionState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactiontype = freezed,
    Object? dropDownButtonValue = freezed,
    Object? selectedDate = freezed,
  }) {
    return _then(_$_AddTransactionState(
      transactiontype: freezed == transactiontype
          ? _value.transactiontype
          : transactiontype // ignore: cast_nullable_to_non_nullable
              as TransactionType?,
      dropDownButtonValue: freezed == dropDownButtonValue
          ? _value.dropDownButtonValue
          : dropDownButtonValue // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedDate: freezed == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$_AddTransactionState implements _AddTransactionState {
  const _$_AddTransactionState(
      {required this.transactiontype,
      required this.dropDownButtonValue,
      required this.selectedDate});

// required String amount,
  @override
  final TransactionType? transactiontype;
  @override
  final String? dropDownButtonValue;
  @override
  final DateTime? selectedDate;

  @override
  String toString() {
    return 'AddTransactionState(transactiontype: $transactiontype, dropDownButtonValue: $dropDownButtonValue, selectedDate: $selectedDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddTransactionState &&
            (identical(other.transactiontype, transactiontype) ||
                other.transactiontype == transactiontype) &&
            (identical(other.dropDownButtonValue, dropDownButtonValue) ||
                other.dropDownButtonValue == dropDownButtonValue) &&
            (identical(other.selectedDate, selectedDate) ||
                other.selectedDate == selectedDate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, transactiontype, dropDownButtonValue, selectedDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddTransactionStateCopyWith<_$_AddTransactionState> get copyWith =>
      __$$_AddTransactionStateCopyWithImpl<_$_AddTransactionState>(
          this, _$identity);
}

abstract class _AddTransactionState implements AddTransactionState {
  const factory _AddTransactionState(
      {required final TransactionType? transactiontype,
      required final String? dropDownButtonValue,
      required final DateTime? selectedDate}) = _$_AddTransactionState;

  @override // required String amount,
  TransactionType? get transactiontype;
  @override
  String? get dropDownButtonValue;
  @override
  DateTime? get selectedDate;
  @override
  @JsonKey(ignore: true)
  _$$_AddTransactionStateCopyWith<_$_AddTransactionState> get copyWith =>
      throw _privateConstructorUsedError;
}
