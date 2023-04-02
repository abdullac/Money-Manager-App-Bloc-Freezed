// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CategoryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int position) changeCategoryScreen,
    required TResult Function() goToIncomeCatogoryPage,
    required TResult Function() goToExpenseCatogoryPage,
    required TResult Function(TransactionType transactionType, String category)
        viewTransactionListByCatogory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int position)? changeCategoryScreen,
    TResult? Function()? goToIncomeCatogoryPage,
    TResult? Function()? goToExpenseCatogoryPage,
    TResult? Function(TransactionType transactionType, String category)?
        viewTransactionListByCatogory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int position)? changeCategoryScreen,
    TResult Function()? goToIncomeCatogoryPage,
    TResult Function()? goToExpenseCatogoryPage,
    TResult Function(TransactionType transactionType, String category)?
        viewTransactionListByCatogory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeCategoryScreen value) changeCategoryScreen,
    required TResult Function(GoToIncomeCatogoryPage value)
        goToIncomeCatogoryPage,
    required TResult Function(GoToExpenseCatogoryPage value)
        goToExpenseCatogoryPage,
    required TResult Function(ViewTransactionListByCatogory value)
        viewTransactionListByCatogory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeCategoryScreen value)? changeCategoryScreen,
    TResult? Function(GoToIncomeCatogoryPage value)? goToIncomeCatogoryPage,
    TResult? Function(GoToExpenseCatogoryPage value)? goToExpenseCatogoryPage,
    TResult? Function(ViewTransactionListByCatogory value)?
        viewTransactionListByCatogory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeCategoryScreen value)? changeCategoryScreen,
    TResult Function(GoToIncomeCatogoryPage value)? goToIncomeCatogoryPage,
    TResult Function(GoToExpenseCatogoryPage value)? goToExpenseCatogoryPage,
    TResult Function(ViewTransactionListByCatogory value)?
        viewTransactionListByCatogory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryEventCopyWith<$Res> {
  factory $CategoryEventCopyWith(
          CategoryEvent value, $Res Function(CategoryEvent) then) =
      _$CategoryEventCopyWithImpl<$Res, CategoryEvent>;
}

/// @nodoc
class _$CategoryEventCopyWithImpl<$Res, $Val extends CategoryEvent>
    implements $CategoryEventCopyWith<$Res> {
  _$CategoryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ChangeCategoryScreenCopyWith<$Res> {
  factory _$$ChangeCategoryScreenCopyWith(_$ChangeCategoryScreen value,
          $Res Function(_$ChangeCategoryScreen) then) =
      __$$ChangeCategoryScreenCopyWithImpl<$Res>;
  @useResult
  $Res call({int position});
}

/// @nodoc
class __$$ChangeCategoryScreenCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$ChangeCategoryScreen>
    implements _$$ChangeCategoryScreenCopyWith<$Res> {
  __$$ChangeCategoryScreenCopyWithImpl(_$ChangeCategoryScreen _value,
      $Res Function(_$ChangeCategoryScreen) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
  }) {
    return _then(_$ChangeCategoryScreen(
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChangeCategoryScreen implements ChangeCategoryScreen {
  const _$ChangeCategoryScreen({required this.position});

  @override
  final int position;

  @override
  String toString() {
    return 'CategoryEvent.changeCategoryScreen(position: $position)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeCategoryScreen &&
            (identical(other.position, position) ||
                other.position == position));
  }

  @override
  int get hashCode => Object.hash(runtimeType, position);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeCategoryScreenCopyWith<_$ChangeCategoryScreen> get copyWith =>
      __$$ChangeCategoryScreenCopyWithImpl<_$ChangeCategoryScreen>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int position) changeCategoryScreen,
    required TResult Function() goToIncomeCatogoryPage,
    required TResult Function() goToExpenseCatogoryPage,
    required TResult Function(TransactionType transactionType, String category)
        viewTransactionListByCatogory,
  }) {
    return changeCategoryScreen(position);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int position)? changeCategoryScreen,
    TResult? Function()? goToIncomeCatogoryPage,
    TResult? Function()? goToExpenseCatogoryPage,
    TResult? Function(TransactionType transactionType, String category)?
        viewTransactionListByCatogory,
  }) {
    return changeCategoryScreen?.call(position);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int position)? changeCategoryScreen,
    TResult Function()? goToIncomeCatogoryPage,
    TResult Function()? goToExpenseCatogoryPage,
    TResult Function(TransactionType transactionType, String category)?
        viewTransactionListByCatogory,
    required TResult orElse(),
  }) {
    if (changeCategoryScreen != null) {
      return changeCategoryScreen(position);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeCategoryScreen value) changeCategoryScreen,
    required TResult Function(GoToIncomeCatogoryPage value)
        goToIncomeCatogoryPage,
    required TResult Function(GoToExpenseCatogoryPage value)
        goToExpenseCatogoryPage,
    required TResult Function(ViewTransactionListByCatogory value)
        viewTransactionListByCatogory,
  }) {
    return changeCategoryScreen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeCategoryScreen value)? changeCategoryScreen,
    TResult? Function(GoToIncomeCatogoryPage value)? goToIncomeCatogoryPage,
    TResult? Function(GoToExpenseCatogoryPage value)? goToExpenseCatogoryPage,
    TResult? Function(ViewTransactionListByCatogory value)?
        viewTransactionListByCatogory,
  }) {
    return changeCategoryScreen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeCategoryScreen value)? changeCategoryScreen,
    TResult Function(GoToIncomeCatogoryPage value)? goToIncomeCatogoryPage,
    TResult Function(GoToExpenseCatogoryPage value)? goToExpenseCatogoryPage,
    TResult Function(ViewTransactionListByCatogory value)?
        viewTransactionListByCatogory,
    required TResult orElse(),
  }) {
    if (changeCategoryScreen != null) {
      return changeCategoryScreen(this);
    }
    return orElse();
  }
}

abstract class ChangeCategoryScreen implements CategoryEvent {
  const factory ChangeCategoryScreen({required final int position}) =
      _$ChangeCategoryScreen;

  int get position;
  @JsonKey(ignore: true)
  _$$ChangeCategoryScreenCopyWith<_$ChangeCategoryScreen> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GoToIncomeCatogoryPageCopyWith<$Res> {
  factory _$$GoToIncomeCatogoryPageCopyWith(_$GoToIncomeCatogoryPage value,
          $Res Function(_$GoToIncomeCatogoryPage) then) =
      __$$GoToIncomeCatogoryPageCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GoToIncomeCatogoryPageCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$GoToIncomeCatogoryPage>
    implements _$$GoToIncomeCatogoryPageCopyWith<$Res> {
  __$$GoToIncomeCatogoryPageCopyWithImpl(_$GoToIncomeCatogoryPage _value,
      $Res Function(_$GoToIncomeCatogoryPage) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GoToIncomeCatogoryPage implements GoToIncomeCatogoryPage {
  const _$GoToIncomeCatogoryPage();

  @override
  String toString() {
    return 'CategoryEvent.goToIncomeCatogoryPage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GoToIncomeCatogoryPage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int position) changeCategoryScreen,
    required TResult Function() goToIncomeCatogoryPage,
    required TResult Function() goToExpenseCatogoryPage,
    required TResult Function(TransactionType transactionType, String category)
        viewTransactionListByCatogory,
  }) {
    return goToIncomeCatogoryPage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int position)? changeCategoryScreen,
    TResult? Function()? goToIncomeCatogoryPage,
    TResult? Function()? goToExpenseCatogoryPage,
    TResult? Function(TransactionType transactionType, String category)?
        viewTransactionListByCatogory,
  }) {
    return goToIncomeCatogoryPage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int position)? changeCategoryScreen,
    TResult Function()? goToIncomeCatogoryPage,
    TResult Function()? goToExpenseCatogoryPage,
    TResult Function(TransactionType transactionType, String category)?
        viewTransactionListByCatogory,
    required TResult orElse(),
  }) {
    if (goToIncomeCatogoryPage != null) {
      return goToIncomeCatogoryPage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeCategoryScreen value) changeCategoryScreen,
    required TResult Function(GoToIncomeCatogoryPage value)
        goToIncomeCatogoryPage,
    required TResult Function(GoToExpenseCatogoryPage value)
        goToExpenseCatogoryPage,
    required TResult Function(ViewTransactionListByCatogory value)
        viewTransactionListByCatogory,
  }) {
    return goToIncomeCatogoryPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeCategoryScreen value)? changeCategoryScreen,
    TResult? Function(GoToIncomeCatogoryPage value)? goToIncomeCatogoryPage,
    TResult? Function(GoToExpenseCatogoryPage value)? goToExpenseCatogoryPage,
    TResult? Function(ViewTransactionListByCatogory value)?
        viewTransactionListByCatogory,
  }) {
    return goToIncomeCatogoryPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeCategoryScreen value)? changeCategoryScreen,
    TResult Function(GoToIncomeCatogoryPage value)? goToIncomeCatogoryPage,
    TResult Function(GoToExpenseCatogoryPage value)? goToExpenseCatogoryPage,
    TResult Function(ViewTransactionListByCatogory value)?
        viewTransactionListByCatogory,
    required TResult orElse(),
  }) {
    if (goToIncomeCatogoryPage != null) {
      return goToIncomeCatogoryPage(this);
    }
    return orElse();
  }
}

abstract class GoToIncomeCatogoryPage implements CategoryEvent {
  const factory GoToIncomeCatogoryPage() = _$GoToIncomeCatogoryPage;
}

/// @nodoc
abstract class _$$GoToExpenseCatogoryPageCopyWith<$Res> {
  factory _$$GoToExpenseCatogoryPageCopyWith(_$GoToExpenseCatogoryPage value,
          $Res Function(_$GoToExpenseCatogoryPage) then) =
      __$$GoToExpenseCatogoryPageCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GoToExpenseCatogoryPageCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$GoToExpenseCatogoryPage>
    implements _$$GoToExpenseCatogoryPageCopyWith<$Res> {
  __$$GoToExpenseCatogoryPageCopyWithImpl(_$GoToExpenseCatogoryPage _value,
      $Res Function(_$GoToExpenseCatogoryPage) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GoToExpenseCatogoryPage implements GoToExpenseCatogoryPage {
  const _$GoToExpenseCatogoryPage();

  @override
  String toString() {
    return 'CategoryEvent.goToExpenseCatogoryPage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoToExpenseCatogoryPage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int position) changeCategoryScreen,
    required TResult Function() goToIncomeCatogoryPage,
    required TResult Function() goToExpenseCatogoryPage,
    required TResult Function(TransactionType transactionType, String category)
        viewTransactionListByCatogory,
  }) {
    return goToExpenseCatogoryPage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int position)? changeCategoryScreen,
    TResult? Function()? goToIncomeCatogoryPage,
    TResult? Function()? goToExpenseCatogoryPage,
    TResult? Function(TransactionType transactionType, String category)?
        viewTransactionListByCatogory,
  }) {
    return goToExpenseCatogoryPage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int position)? changeCategoryScreen,
    TResult Function()? goToIncomeCatogoryPage,
    TResult Function()? goToExpenseCatogoryPage,
    TResult Function(TransactionType transactionType, String category)?
        viewTransactionListByCatogory,
    required TResult orElse(),
  }) {
    if (goToExpenseCatogoryPage != null) {
      return goToExpenseCatogoryPage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeCategoryScreen value) changeCategoryScreen,
    required TResult Function(GoToIncomeCatogoryPage value)
        goToIncomeCatogoryPage,
    required TResult Function(GoToExpenseCatogoryPage value)
        goToExpenseCatogoryPage,
    required TResult Function(ViewTransactionListByCatogory value)
        viewTransactionListByCatogory,
  }) {
    return goToExpenseCatogoryPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeCategoryScreen value)? changeCategoryScreen,
    TResult? Function(GoToIncomeCatogoryPage value)? goToIncomeCatogoryPage,
    TResult? Function(GoToExpenseCatogoryPage value)? goToExpenseCatogoryPage,
    TResult? Function(ViewTransactionListByCatogory value)?
        viewTransactionListByCatogory,
  }) {
    return goToExpenseCatogoryPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeCategoryScreen value)? changeCategoryScreen,
    TResult Function(GoToIncomeCatogoryPage value)? goToIncomeCatogoryPage,
    TResult Function(GoToExpenseCatogoryPage value)? goToExpenseCatogoryPage,
    TResult Function(ViewTransactionListByCatogory value)?
        viewTransactionListByCatogory,
    required TResult orElse(),
  }) {
    if (goToExpenseCatogoryPage != null) {
      return goToExpenseCatogoryPage(this);
    }
    return orElse();
  }
}

abstract class GoToExpenseCatogoryPage implements CategoryEvent {
  const factory GoToExpenseCatogoryPage() = _$GoToExpenseCatogoryPage;
}

/// @nodoc
abstract class _$$ViewTransactionListByCatogoryCopyWith<$Res> {
  factory _$$ViewTransactionListByCatogoryCopyWith(
          _$ViewTransactionListByCatogory value,
          $Res Function(_$ViewTransactionListByCatogory) then) =
      __$$ViewTransactionListByCatogoryCopyWithImpl<$Res>;
  @useResult
  $Res call({TransactionType transactionType, String category});
}

/// @nodoc
class __$$ViewTransactionListByCatogoryCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$ViewTransactionListByCatogory>
    implements _$$ViewTransactionListByCatogoryCopyWith<$Res> {
  __$$ViewTransactionListByCatogoryCopyWithImpl(
      _$ViewTransactionListByCatogory _value,
      $Res Function(_$ViewTransactionListByCatogory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionType = null,
    Object? category = null,
  }) {
    return _then(_$ViewTransactionListByCatogory(
      transactionType: null == transactionType
          ? _value.transactionType
          : transactionType // ignore: cast_nullable_to_non_nullable
              as TransactionType,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ViewTransactionListByCatogory implements ViewTransactionListByCatogory {
  const _$ViewTransactionListByCatogory(
      {required this.transactionType, required this.category});

  @override
  final TransactionType transactionType;
  @override
  final String category;

  @override
  String toString() {
    return 'CategoryEvent.viewTransactionListByCatogory(transactionType: $transactionType, category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ViewTransactionListByCatogory &&
            (identical(other.transactionType, transactionType) ||
                other.transactionType == transactionType) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, transactionType, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ViewTransactionListByCatogoryCopyWith<_$ViewTransactionListByCatogory>
      get copyWith => __$$ViewTransactionListByCatogoryCopyWithImpl<
          _$ViewTransactionListByCatogory>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int position) changeCategoryScreen,
    required TResult Function() goToIncomeCatogoryPage,
    required TResult Function() goToExpenseCatogoryPage,
    required TResult Function(TransactionType transactionType, String category)
        viewTransactionListByCatogory,
  }) {
    return viewTransactionListByCatogory(transactionType, category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int position)? changeCategoryScreen,
    TResult? Function()? goToIncomeCatogoryPage,
    TResult? Function()? goToExpenseCatogoryPage,
    TResult? Function(TransactionType transactionType, String category)?
        viewTransactionListByCatogory,
  }) {
    return viewTransactionListByCatogory?.call(transactionType, category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int position)? changeCategoryScreen,
    TResult Function()? goToIncomeCatogoryPage,
    TResult Function()? goToExpenseCatogoryPage,
    TResult Function(TransactionType transactionType, String category)?
        viewTransactionListByCatogory,
    required TResult orElse(),
  }) {
    if (viewTransactionListByCatogory != null) {
      return viewTransactionListByCatogory(transactionType, category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeCategoryScreen value) changeCategoryScreen,
    required TResult Function(GoToIncomeCatogoryPage value)
        goToIncomeCatogoryPage,
    required TResult Function(GoToExpenseCatogoryPage value)
        goToExpenseCatogoryPage,
    required TResult Function(ViewTransactionListByCatogory value)
        viewTransactionListByCatogory,
  }) {
    return viewTransactionListByCatogory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeCategoryScreen value)? changeCategoryScreen,
    TResult? Function(GoToIncomeCatogoryPage value)? goToIncomeCatogoryPage,
    TResult? Function(GoToExpenseCatogoryPage value)? goToExpenseCatogoryPage,
    TResult? Function(ViewTransactionListByCatogory value)?
        viewTransactionListByCatogory,
  }) {
    return viewTransactionListByCatogory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeCategoryScreen value)? changeCategoryScreen,
    TResult Function(GoToIncomeCatogoryPage value)? goToIncomeCatogoryPage,
    TResult Function(GoToExpenseCatogoryPage value)? goToExpenseCatogoryPage,
    TResult Function(ViewTransactionListByCatogory value)?
        viewTransactionListByCatogory,
    required TResult orElse(),
  }) {
    if (viewTransactionListByCatogory != null) {
      return viewTransactionListByCatogory(this);
    }
    return orElse();
  }
}

abstract class ViewTransactionListByCatogory implements CategoryEvent {
  const factory ViewTransactionListByCatogory(
      {required final TransactionType transactionType,
      required final String category}) = _$ViewTransactionListByCatogory;

  TransactionType get transactionType;
  String get category;
  @JsonKey(ignore: true)
  _$$ViewTransactionListByCatogoryCopyWith<_$ViewTransactionListByCatogory>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CategoryState {
  int get position => throw _privateConstructorUsedError;
  List<TransactionModel> get transactionsModelList =>
      throw _privateConstructorUsedError;
  List<String?> get categoryList => throw _privateConstructorUsedError;
  TransactionType get transactionType => throw _privateConstructorUsedError;
  Widget? get categoryTransactionsListPage =>
      throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  bool? get isListByCategory => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoryStateCopyWith<CategoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryStateCopyWith<$Res> {
  factory $CategoryStateCopyWith(
          CategoryState value, $Res Function(CategoryState) then) =
      _$CategoryStateCopyWithImpl<$Res, CategoryState>;
  @useResult
  $Res call(
      {int position,
      List<TransactionModel> transactionsModelList,
      List<String?> categoryList,
      TransactionType transactionType,
      Widget? categoryTransactionsListPage,
      String? category,
      bool? isListByCategory});
}

/// @nodoc
class _$CategoryStateCopyWithImpl<$Res, $Val extends CategoryState>
    implements $CategoryStateCopyWith<$Res> {
  _$CategoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
    Object? transactionsModelList = null,
    Object? categoryList = null,
    Object? transactionType = null,
    Object? categoryTransactionsListPage = freezed,
    Object? category = freezed,
    Object? isListByCategory = freezed,
  }) {
    return _then(_value.copyWith(
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      transactionsModelList: null == transactionsModelList
          ? _value.transactionsModelList
          : transactionsModelList // ignore: cast_nullable_to_non_nullable
              as List<TransactionModel>,
      categoryList: null == categoryList
          ? _value.categoryList
          : categoryList // ignore: cast_nullable_to_non_nullable
              as List<String?>,
      transactionType: null == transactionType
          ? _value.transactionType
          : transactionType // ignore: cast_nullable_to_non_nullable
              as TransactionType,
      categoryTransactionsListPage: freezed == categoryTransactionsListPage
          ? _value.categoryTransactionsListPage
          : categoryTransactionsListPage // ignore: cast_nullable_to_non_nullable
              as Widget?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      isListByCategory: freezed == isListByCategory
          ? _value.isListByCategory
          : isListByCategory // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CategoryStateCopyWith<$Res>
    implements $CategoryStateCopyWith<$Res> {
  factory _$$_CategoryStateCopyWith(
          _$_CategoryState value, $Res Function(_$_CategoryState) then) =
      __$$_CategoryStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int position,
      List<TransactionModel> transactionsModelList,
      List<String?> categoryList,
      TransactionType transactionType,
      Widget? categoryTransactionsListPage,
      String? category,
      bool? isListByCategory});
}

/// @nodoc
class __$$_CategoryStateCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res, _$_CategoryState>
    implements _$$_CategoryStateCopyWith<$Res> {
  __$$_CategoryStateCopyWithImpl(
      _$_CategoryState _value, $Res Function(_$_CategoryState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
    Object? transactionsModelList = null,
    Object? categoryList = null,
    Object? transactionType = null,
    Object? categoryTransactionsListPage = freezed,
    Object? category = freezed,
    Object? isListByCategory = freezed,
  }) {
    return _then(_$_CategoryState(
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      transactionsModelList: null == transactionsModelList
          ? _value._transactionsModelList
          : transactionsModelList // ignore: cast_nullable_to_non_nullable
              as List<TransactionModel>,
      categoryList: null == categoryList
          ? _value._categoryList
          : categoryList // ignore: cast_nullable_to_non_nullable
              as List<String?>,
      transactionType: null == transactionType
          ? _value.transactionType
          : transactionType // ignore: cast_nullable_to_non_nullable
              as TransactionType,
      categoryTransactionsListPage: freezed == categoryTransactionsListPage
          ? _value.categoryTransactionsListPage
          : categoryTransactionsListPage // ignore: cast_nullable_to_non_nullable
              as Widget?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      isListByCategory: freezed == isListByCategory
          ? _value.isListByCategory
          : isListByCategory // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_CategoryState implements _CategoryState {
  const _$_CategoryState(
      {required this.position,
      required final List<TransactionModel> transactionsModelList,
      required final List<String?> categoryList,
      required this.transactionType,
      required this.categoryTransactionsListPage,
      required this.category,
      required this.isListByCategory})
      : _transactionsModelList = transactionsModelList,
        _categoryList = categoryList;

  @override
  final int position;
  final List<TransactionModel> _transactionsModelList;
  @override
  List<TransactionModel> get transactionsModelList {
    if (_transactionsModelList is EqualUnmodifiableListView)
      return _transactionsModelList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transactionsModelList);
  }

  final List<String?> _categoryList;
  @override
  List<String?> get categoryList {
    if (_categoryList is EqualUnmodifiableListView) return _categoryList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categoryList);
  }

  @override
  final TransactionType transactionType;
  @override
  final Widget? categoryTransactionsListPage;
  @override
  final String? category;
  @override
  final bool? isListByCategory;

  @override
  String toString() {
    return 'CategoryState(position: $position, transactionsModelList: $transactionsModelList, categoryList: $categoryList, transactionType: $transactionType, categoryTransactionsListPage: $categoryTransactionsListPage, category: $category, isListByCategory: $isListByCategory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoryState &&
            (identical(other.position, position) ||
                other.position == position) &&
            const DeepCollectionEquality()
                .equals(other._transactionsModelList, _transactionsModelList) &&
            const DeepCollectionEquality()
                .equals(other._categoryList, _categoryList) &&
            (identical(other.transactionType, transactionType) ||
                other.transactionType == transactionType) &&
            (identical(other.categoryTransactionsListPage,
                    categoryTransactionsListPage) ||
                other.categoryTransactionsListPage ==
                    categoryTransactionsListPage) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.isListByCategory, isListByCategory) ||
                other.isListByCategory == isListByCategory));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      position,
      const DeepCollectionEquality().hash(_transactionsModelList),
      const DeepCollectionEquality().hash(_categoryList),
      transactionType,
      categoryTransactionsListPage,
      category,
      isListByCategory);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategoryStateCopyWith<_$_CategoryState> get copyWith =>
      __$$_CategoryStateCopyWithImpl<_$_CategoryState>(this, _$identity);
}

abstract class _CategoryState implements CategoryState {
  const factory _CategoryState(
      {required final int position,
      required final List<TransactionModel> transactionsModelList,
      required final List<String?> categoryList,
      required final TransactionType transactionType,
      required final Widget? categoryTransactionsListPage,
      required final String? category,
      required final bool? isListByCategory}) = _$_CategoryState;

  @override
  int get position;
  @override
  List<TransactionModel> get transactionsModelList;
  @override
  List<String?> get categoryList;
  @override
  TransactionType get transactionType;
  @override
  Widget? get categoryTransactionsListPage;
  @override
  String? get category;
  @override
  bool? get isListByCategory;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryStateCopyWith<_$_CategoryState> get copyWith =>
      throw _privateConstructorUsedError;
}
