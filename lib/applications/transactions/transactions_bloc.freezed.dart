// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transactions_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TransactionsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() viewTransactionList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? viewTransactionList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? viewTransactionList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ViewTransactionList value) viewTransactionList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ViewTransactionList value)? viewTransactionList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ViewTransactionList value)? viewTransactionList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionsEventCopyWith<$Res> {
  factory $TransactionsEventCopyWith(
          TransactionsEvent value, $Res Function(TransactionsEvent) then) =
      _$TransactionsEventCopyWithImpl<$Res, TransactionsEvent>;
}

/// @nodoc
class _$TransactionsEventCopyWithImpl<$Res, $Val extends TransactionsEvent>
    implements $TransactionsEventCopyWith<$Res> {
  _$TransactionsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ViewTransactionListCopyWith<$Res> {
  factory _$$ViewTransactionListCopyWith(_$ViewTransactionList value,
          $Res Function(_$ViewTransactionList) then) =
      __$$ViewTransactionListCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ViewTransactionListCopyWithImpl<$Res>
    extends _$TransactionsEventCopyWithImpl<$Res, _$ViewTransactionList>
    implements _$$ViewTransactionListCopyWith<$Res> {
  __$$ViewTransactionListCopyWithImpl(
      _$ViewTransactionList _value, $Res Function(_$ViewTransactionList) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ViewTransactionList implements ViewTransactionList {
  const _$ViewTransactionList();

  @override
  String toString() {
    return 'TransactionsEvent.viewTransactionList()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ViewTransactionList);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() viewTransactionList,
  }) {
    return viewTransactionList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? viewTransactionList,
  }) {
    return viewTransactionList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? viewTransactionList,
    required TResult orElse(),
  }) {
    if (viewTransactionList != null) {
      return viewTransactionList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ViewTransactionList value) viewTransactionList,
  }) {
    return viewTransactionList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ViewTransactionList value)? viewTransactionList,
  }) {
    return viewTransactionList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ViewTransactionList value)? viewTransactionList,
    required TResult orElse(),
  }) {
    if (viewTransactionList != null) {
      return viewTransactionList(this);
    }
    return orElse();
  }
}

abstract class ViewTransactionList implements TransactionsEvent {
  const factory ViewTransactionList() = _$ViewTransactionList;
}

/// @nodoc
mixin _$TransactionsState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<TransactionModel> get transactionModelList =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TransactionsStateCopyWith<TransactionsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionsStateCopyWith<$Res> {
  factory $TransactionsStateCopyWith(
          TransactionsState value, $Res Function(TransactionsState) then) =
      _$TransactionsStateCopyWithImpl<$Res, TransactionsState>;
  @useResult
  $Res call({bool isLoading, List<TransactionModel> transactionModelList});
}

/// @nodoc
class _$TransactionsStateCopyWithImpl<$Res, $Val extends TransactionsState>
    implements $TransactionsStateCopyWith<$Res> {
  _$TransactionsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? transactionModelList = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      transactionModelList: null == transactionModelList
          ? _value.transactionModelList
          : transactionModelList // ignore: cast_nullable_to_non_nullable
              as List<TransactionModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TransactionsStateCopyWith<$Res>
    implements $TransactionsStateCopyWith<$Res> {
  factory _$$_TransactionsStateCopyWith(_$_TransactionsState value,
          $Res Function(_$_TransactionsState) then) =
      __$$_TransactionsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, List<TransactionModel> transactionModelList});
}

/// @nodoc
class __$$_TransactionsStateCopyWithImpl<$Res>
    extends _$TransactionsStateCopyWithImpl<$Res, _$_TransactionsState>
    implements _$$_TransactionsStateCopyWith<$Res> {
  __$$_TransactionsStateCopyWithImpl(
      _$_TransactionsState _value, $Res Function(_$_TransactionsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? transactionModelList = null,
  }) {
    return _then(_$_TransactionsState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      transactionModelList: null == transactionModelList
          ? _value._transactionModelList
          : transactionModelList // ignore: cast_nullable_to_non_nullable
              as List<TransactionModel>,
    ));
  }
}

/// @nodoc

class _$_TransactionsState implements _TransactionsState {
  const _$_TransactionsState(
      {required this.isLoading,
      required final List<TransactionModel> transactionModelList})
      : _transactionModelList = transactionModelList;

  @override
  final bool isLoading;
  final List<TransactionModel> _transactionModelList;
  @override
  List<TransactionModel> get transactionModelList {
    if (_transactionModelList is EqualUnmodifiableListView)
      return _transactionModelList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transactionModelList);
  }

  @override
  String toString() {
    return 'TransactionsState(isLoading: $isLoading, transactionModelList: $transactionModelList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TransactionsState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._transactionModelList, _transactionModelList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading,
      const DeepCollectionEquality().hash(_transactionModelList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TransactionsStateCopyWith<_$_TransactionsState> get copyWith =>
      __$$_TransactionsStateCopyWithImpl<_$_TransactionsState>(
          this, _$identity);
}

abstract class _TransactionsState implements TransactionsState {
  const factory _TransactionsState(
          {required final bool isLoading,
          required final List<TransactionModel> transactionModelList}) =
      _$_TransactionsState;

  @override
  bool get isLoading;
  @override
  List<TransactionModel> get transactionModelList;
  @override
  @JsonKey(ignore: true)
  _$$_TransactionsStateCopyWith<_$_TransactionsState> get copyWith =>
      throw _privateConstructorUsedError;
}
