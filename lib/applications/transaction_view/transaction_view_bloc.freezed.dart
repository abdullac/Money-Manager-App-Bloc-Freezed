// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_view_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TransactionViewEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Widget? transactionViewPage) transactionViewPage,
    required TResult Function(TransactionModel transactionModel) deleteItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Widget? transactionViewPage)? transactionViewPage,
    TResult? Function(TransactionModel transactionModel)? deleteItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Widget? transactionViewPage)? transactionViewPage,
    TResult Function(TransactionModel transactionModel)? deleteItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TransactionViewPage value) transactionViewPage,
    required TResult Function(DeleteItem value) deleteItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TransactionViewPage value)? transactionViewPage,
    TResult? Function(DeleteItem value)? deleteItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionViewPage value)? transactionViewPage,
    TResult Function(DeleteItem value)? deleteItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionViewEventCopyWith<$Res> {
  factory $TransactionViewEventCopyWith(TransactionViewEvent value,
          $Res Function(TransactionViewEvent) then) =
      _$TransactionViewEventCopyWithImpl<$Res, TransactionViewEvent>;
}

/// @nodoc
class _$TransactionViewEventCopyWithImpl<$Res,
        $Val extends TransactionViewEvent>
    implements $TransactionViewEventCopyWith<$Res> {
  _$TransactionViewEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TransactionViewPageCopyWith<$Res> {
  factory _$$TransactionViewPageCopyWith(_$TransactionViewPage value,
          $Res Function(_$TransactionViewPage) then) =
      __$$TransactionViewPageCopyWithImpl<$Res>;
  @useResult
  $Res call({Widget? transactionViewPage});
}

/// @nodoc
class __$$TransactionViewPageCopyWithImpl<$Res>
    extends _$TransactionViewEventCopyWithImpl<$Res, _$TransactionViewPage>
    implements _$$TransactionViewPageCopyWith<$Res> {
  __$$TransactionViewPageCopyWithImpl(
      _$TransactionViewPage _value, $Res Function(_$TransactionViewPage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionViewPage = freezed,
  }) {
    return _then(_$TransactionViewPage(
      transactionViewPage: freezed == transactionViewPage
          ? _value.transactionViewPage
          : transactionViewPage // ignore: cast_nullable_to_non_nullable
              as Widget?,
    ));
  }
}

/// @nodoc

class _$TransactionViewPage implements TransactionViewPage {
  const _$TransactionViewPage({required this.transactionViewPage});

  @override
  final Widget? transactionViewPage;

  @override
  String toString() {
    return 'TransactionViewEvent.transactionViewPage(transactionViewPage: $transactionViewPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionViewPage &&
            (identical(other.transactionViewPage, transactionViewPage) ||
                other.transactionViewPage == transactionViewPage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, transactionViewPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionViewPageCopyWith<_$TransactionViewPage> get copyWith =>
      __$$TransactionViewPageCopyWithImpl<_$TransactionViewPage>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Widget? transactionViewPage) transactionViewPage,
    required TResult Function(TransactionModel transactionModel) deleteItem,
  }) {
    return transactionViewPage(this.transactionViewPage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Widget? transactionViewPage)? transactionViewPage,
    TResult? Function(TransactionModel transactionModel)? deleteItem,
  }) {
    return transactionViewPage?.call(this.transactionViewPage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Widget? transactionViewPage)? transactionViewPage,
    TResult Function(TransactionModel transactionModel)? deleteItem,
    required TResult orElse(),
  }) {
    if (transactionViewPage != null) {
      return transactionViewPage(this.transactionViewPage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TransactionViewPage value) transactionViewPage,
    required TResult Function(DeleteItem value) deleteItem,
  }) {
    return transactionViewPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TransactionViewPage value)? transactionViewPage,
    TResult? Function(DeleteItem value)? deleteItem,
  }) {
    return transactionViewPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionViewPage value)? transactionViewPage,
    TResult Function(DeleteItem value)? deleteItem,
    required TResult orElse(),
  }) {
    if (transactionViewPage != null) {
      return transactionViewPage(this);
    }
    return orElse();
  }
}

abstract class TransactionViewPage implements TransactionViewEvent {
  const factory TransactionViewPage(
      {required final Widget? transactionViewPage}) = _$TransactionViewPage;

  Widget? get transactionViewPage;
  @JsonKey(ignore: true)
  _$$TransactionViewPageCopyWith<_$TransactionViewPage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteItemCopyWith<$Res> {
  factory _$$DeleteItemCopyWith(
          _$DeleteItem value, $Res Function(_$DeleteItem) then) =
      __$$DeleteItemCopyWithImpl<$Res>;
  @useResult
  $Res call({TransactionModel transactionModel});

  $TransactionModelCopyWith<$Res> get transactionModel;
}

/// @nodoc
class __$$DeleteItemCopyWithImpl<$Res>
    extends _$TransactionViewEventCopyWithImpl<$Res, _$DeleteItem>
    implements _$$DeleteItemCopyWith<$Res> {
  __$$DeleteItemCopyWithImpl(
      _$DeleteItem _value, $Res Function(_$DeleteItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionModel = null,
  }) {
    return _then(_$DeleteItem(
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

class _$DeleteItem implements DeleteItem {
  const _$DeleteItem({required this.transactionModel});

  @override
  final TransactionModel transactionModel;

  @override
  String toString() {
    return 'TransactionViewEvent.deleteItem(transactionModel: $transactionModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteItem &&
            (identical(other.transactionModel, transactionModel) ||
                other.transactionModel == transactionModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, transactionModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteItemCopyWith<_$DeleteItem> get copyWith =>
      __$$DeleteItemCopyWithImpl<_$DeleteItem>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Widget? transactionViewPage) transactionViewPage,
    required TResult Function(TransactionModel transactionModel) deleteItem,
  }) {
    return deleteItem(transactionModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Widget? transactionViewPage)? transactionViewPage,
    TResult? Function(TransactionModel transactionModel)? deleteItem,
  }) {
    return deleteItem?.call(transactionModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Widget? transactionViewPage)? transactionViewPage,
    TResult Function(TransactionModel transactionModel)? deleteItem,
    required TResult orElse(),
  }) {
    if (deleteItem != null) {
      return deleteItem(transactionModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TransactionViewPage value) transactionViewPage,
    required TResult Function(DeleteItem value) deleteItem,
  }) {
    return deleteItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TransactionViewPage value)? transactionViewPage,
    TResult? Function(DeleteItem value)? deleteItem,
  }) {
    return deleteItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionViewPage value)? transactionViewPage,
    TResult Function(DeleteItem value)? deleteItem,
    required TResult orElse(),
  }) {
    if (deleteItem != null) {
      return deleteItem(this);
    }
    return orElse();
  }
}

abstract class DeleteItem implements TransactionViewEvent {
  const factory DeleteItem({required final TransactionModel transactionModel}) =
      _$DeleteItem;

  TransactionModel get transactionModel;
  @JsonKey(ignore: true)
  _$$DeleteItemCopyWith<_$DeleteItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TransactionViewState {
  Widget? get transactionViewPage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TransactionViewStateCopyWith<TransactionViewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionViewStateCopyWith<$Res> {
  factory $TransactionViewStateCopyWith(TransactionViewState value,
          $Res Function(TransactionViewState) then) =
      _$TransactionViewStateCopyWithImpl<$Res, TransactionViewState>;
  @useResult
  $Res call({Widget? transactionViewPage});
}

/// @nodoc
class _$TransactionViewStateCopyWithImpl<$Res,
        $Val extends TransactionViewState>
    implements $TransactionViewStateCopyWith<$Res> {
  _$TransactionViewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionViewPage = freezed,
  }) {
    return _then(_value.copyWith(
      transactionViewPage: freezed == transactionViewPage
          ? _value.transactionViewPage
          : transactionViewPage // ignore: cast_nullable_to_non_nullable
              as Widget?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TransactionViewStateCopyWith<$Res>
    implements $TransactionViewStateCopyWith<$Res> {
  factory _$$_TransactionViewStateCopyWith(_$_TransactionViewState value,
          $Res Function(_$_TransactionViewState) then) =
      __$$_TransactionViewStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Widget? transactionViewPage});
}

/// @nodoc
class __$$_TransactionViewStateCopyWithImpl<$Res>
    extends _$TransactionViewStateCopyWithImpl<$Res, _$_TransactionViewState>
    implements _$$_TransactionViewStateCopyWith<$Res> {
  __$$_TransactionViewStateCopyWithImpl(_$_TransactionViewState _value,
      $Res Function(_$_TransactionViewState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionViewPage = freezed,
  }) {
    return _then(_$_TransactionViewState(
      transactionViewPage: freezed == transactionViewPage
          ? _value.transactionViewPage
          : transactionViewPage // ignore: cast_nullable_to_non_nullable
              as Widget?,
    ));
  }
}

/// @nodoc

class _$_TransactionViewState implements _TransactionViewState {
  const _$_TransactionViewState({required this.transactionViewPage});

  @override
  final Widget? transactionViewPage;

  @override
  String toString() {
    return 'TransactionViewState(transactionViewPage: $transactionViewPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TransactionViewState &&
            (identical(other.transactionViewPage, transactionViewPage) ||
                other.transactionViewPage == transactionViewPage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, transactionViewPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TransactionViewStateCopyWith<_$_TransactionViewState> get copyWith =>
      __$$_TransactionViewStateCopyWithImpl<_$_TransactionViewState>(
          this, _$identity);
}

abstract class _TransactionViewState implements TransactionViewState {
  const factory _TransactionViewState(
      {required final Widget? transactionViewPage}) = _$_TransactionViewState;

  @override
  Widget? get transactionViewPage;
  @override
  @JsonKey(ignore: true)
  _$$_TransactionViewStateCopyWith<_$_TransactionViewState> get copyWith =>
      throw _privateConstructorUsedError;
}
