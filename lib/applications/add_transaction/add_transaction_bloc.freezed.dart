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
  TransactionModel get transactionModel => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TransactionModel transactionModel)
        saveTransaction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TransactionModel transactionModel)? saveTransaction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TransactionModel transactionModel)? saveTransaction,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveTransaction value) saveTransaction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SaveTransaction value)? saveTransaction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveTransaction value)? saveTransaction,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddTransactionEventCopyWith<AddTransactionEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddTransactionEventCopyWith<$Res> {
  factory $AddTransactionEventCopyWith(
          AddTransactionEvent value, $Res Function(AddTransactionEvent) then) =
      _$AddTransactionEventCopyWithImpl<$Res, AddTransactionEvent>;
  @useResult
  $Res call({TransactionModel transactionModel});

  $TransactionModelCopyWith<$Res> get transactionModel;
}

/// @nodoc
class _$AddTransactionEventCopyWithImpl<$Res, $Val extends AddTransactionEvent>
    implements $AddTransactionEventCopyWith<$Res> {
  _$AddTransactionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionModel = null,
  }) {
    return _then(_value.copyWith(
      transactionModel: null == transactionModel
          ? _value.transactionModel
          : transactionModel // ignore: cast_nullable_to_non_nullable
              as TransactionModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TransactionModelCopyWith<$Res> get transactionModel {
    return $TransactionModelCopyWith<$Res>(_value.transactionModel, (value) {
      return _then(_value.copyWith(transactionModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SaveTransactionCopyWith<$Res>
    implements $AddTransactionEventCopyWith<$Res> {
  factory _$$SaveTransactionCopyWith(
          _$SaveTransaction value, $Res Function(_$SaveTransaction) then) =
      __$$SaveTransactionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TransactionModel transactionModel});

  @override
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
  }) {
    return saveTransaction(transactionModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TransactionModel transactionModel)? saveTransaction,
  }) {
    return saveTransaction?.call(transactionModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TransactionModel transactionModel)? saveTransaction,
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
  }) {
    return saveTransaction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SaveTransaction value)? saveTransaction,
  }) {
    return saveTransaction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveTransaction value)? saveTransaction,
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

  @override
  TransactionModel get transactionModel;
  @override
  @JsonKey(ignore: true)
  _$$SaveTransactionCopyWith<_$SaveTransaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddTransactionState {}

/// @nodoc
abstract class $AddTransactionStateCopyWith<$Res> {
  factory $AddTransactionStateCopyWith(
          AddTransactionState value, $Res Function(AddTransactionState) then) =
      _$AddTransactionStateCopyWithImpl<$Res, AddTransactionState>;
}

/// @nodoc
class _$AddTransactionStateCopyWithImpl<$Res, $Val extends AddTransactionState>
    implements $AddTransactionStateCopyWith<$Res> {
  _$AddTransactionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_AddTransactionStateCopyWith<$Res> {
  factory _$$_AddTransactionStateCopyWith(_$_AddTransactionState value,
          $Res Function(_$_AddTransactionState) then) =
      __$$_AddTransactionStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AddTransactionStateCopyWithImpl<$Res>
    extends _$AddTransactionStateCopyWithImpl<$Res, _$_AddTransactionState>
    implements _$$_AddTransactionStateCopyWith<$Res> {
  __$$_AddTransactionStateCopyWithImpl(_$_AddTransactionState _value,
      $Res Function(_$_AddTransactionState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AddTransactionState implements _AddTransactionState {
  const _$_AddTransactionState();

  @override
  String toString() {
    return 'AddTransactionState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AddTransactionState);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _AddTransactionState implements AddTransactionState {
  const factory _AddTransactionState() = _$_AddTransactionState;
}
