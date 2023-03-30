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
  int get position => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int position) changeCategoryScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int position)? changeCategoryScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int position)? changeCategoryScreen,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeCategoryScreen value) changeCategoryScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeCategoryScreen value)? changeCategoryScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeCategoryScreen value)? changeCategoryScreen,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoryEventCopyWith<CategoryEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryEventCopyWith<$Res> {
  factory $CategoryEventCopyWith(
          CategoryEvent value, $Res Function(CategoryEvent) then) =
      _$CategoryEventCopyWithImpl<$Res, CategoryEvent>;
  @useResult
  $Res call({int position});
}

/// @nodoc
class _$CategoryEventCopyWithImpl<$Res, $Val extends CategoryEvent>
    implements $CategoryEventCopyWith<$Res> {
  _$CategoryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
  }) {
    return _then(_value.copyWith(
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChangeCategoryScreenCopyWith<$Res>
    implements $CategoryEventCopyWith<$Res> {
  factory _$$ChangeCategoryScreenCopyWith(_$ChangeCategoryScreen value,
          $Res Function(_$ChangeCategoryScreen) then) =
      __$$ChangeCategoryScreenCopyWithImpl<$Res>;
  @override
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
  }) {
    return changeCategoryScreen(position);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int position)? changeCategoryScreen,
  }) {
    return changeCategoryScreen?.call(position);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int position)? changeCategoryScreen,
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
  }) {
    return changeCategoryScreen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeCategoryScreen value)? changeCategoryScreen,
  }) {
    return changeCategoryScreen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeCategoryScreen value)? changeCategoryScreen,
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

  @override
  int get position;
  @override
  @JsonKey(ignore: true)
  _$$ChangeCategoryScreenCopyWith<_$ChangeCategoryScreen> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CategoryState {
  int get position => throw _privateConstructorUsedError;
  List<TransactionModel> get transactionsModelList =>
      throw _privateConstructorUsedError;

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
  $Res call({int position, List<TransactionModel> transactionsModelList});
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
  $Res call({int position, List<TransactionModel> transactionsModelList});
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
    ));
  }
}

/// @nodoc

class _$_CategoryState implements _CategoryState {
  const _$_CategoryState(
      {required this.position,
      required final List<TransactionModel> transactionsModelList})
      : _transactionsModelList = transactionsModelList;

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

  @override
  String toString() {
    return 'CategoryState(position: $position, transactionsModelList: $transactionsModelList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoryState &&
            (identical(other.position, position) ||
                other.position == position) &&
            const DeepCollectionEquality()
                .equals(other._transactionsModelList, _transactionsModelList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, position,
      const DeepCollectionEquality().hash(_transactionsModelList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategoryStateCopyWith<_$_CategoryState> get copyWith =>
      __$$_CategoryStateCopyWithImpl<_$_CategoryState>(this, _$identity);
}

abstract class _CategoryState implements CategoryState {
  const factory _CategoryState(
          {required final int position,
          required final List<TransactionModel> transactionsModelList}) =
      _$_CategoryState;

  @override
  int get position;
  @override
  List<TransactionModel> get transactionsModelList;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryStateCopyWith<_$_CategoryState> get copyWith =>
      throw _privateConstructorUsedError;
}
