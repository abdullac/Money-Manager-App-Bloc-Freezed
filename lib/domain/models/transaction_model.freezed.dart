// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TransactionModel _$TransactionModelFromJson(Map<String, dynamic> json) {
  return _TransactionModel.fromJson(json);
}

/// @nodoc
mixin _$TransactionModel {
  @JsonKey(name: "transaction_id")
  int get transactionId => throw _privateConstructorUsedError;
  @JsonKey(name: "amount")
  String get amount => throw _privateConstructorUsedError;
  @JsonKey(name: "transaction_type")
  TransactionType? get transactionType => throw _privateConstructorUsedError;
  @JsonKey(name: "category")
  String? get category => throw _privateConstructorUsedError;
  @JsonKey(name: "date")
  DateTime? get date => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionModelCopyWith<TransactionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionModelCopyWith<$Res> {
  factory $TransactionModelCopyWith(
          TransactionModel value, $Res Function(TransactionModel) then) =
      _$TransactionModelCopyWithImpl<$Res, TransactionModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "transaction_id") int transactionId,
      @JsonKey(name: "amount") String amount,
      @JsonKey(name: "transaction_type") TransactionType? transactionType,
      @JsonKey(name: "category") String? category,
      @JsonKey(name: "date") DateTime? date,
      @JsonKey(name: "description") String description});
}

/// @nodoc
class _$TransactionModelCopyWithImpl<$Res, $Val extends TransactionModel>
    implements $TransactionModelCopyWith<$Res> {
  _$TransactionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionId = null,
    Object? amount = null,
    Object? transactionType = freezed,
    Object? category = freezed,
    Object? date = freezed,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      transactionId: null == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as int,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      transactionType: freezed == transactionType
          ? _value.transactionType
          : transactionType // ignore: cast_nullable_to_non_nullable
              as TransactionType?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TransactionModelCopyWith<$Res>
    implements $TransactionModelCopyWith<$Res> {
  factory _$$_TransactionModelCopyWith(
          _$_TransactionModel value, $Res Function(_$_TransactionModel) then) =
      __$$_TransactionModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "transaction_id") int transactionId,
      @JsonKey(name: "amount") String amount,
      @JsonKey(name: "transaction_type") TransactionType? transactionType,
      @JsonKey(name: "category") String? category,
      @JsonKey(name: "date") DateTime? date,
      @JsonKey(name: "description") String description});
}

/// @nodoc
class __$$_TransactionModelCopyWithImpl<$Res>
    extends _$TransactionModelCopyWithImpl<$Res, _$_TransactionModel>
    implements _$$_TransactionModelCopyWith<$Res> {
  __$$_TransactionModelCopyWithImpl(
      _$_TransactionModel _value, $Res Function(_$_TransactionModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionId = null,
    Object? amount = null,
    Object? transactionType = freezed,
    Object? category = freezed,
    Object? date = freezed,
    Object? description = null,
  }) {
    return _then(_$_TransactionModel(
      transactionId: null == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as int,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      transactionType: freezed == transactionType
          ? _value.transactionType
          : transactionType // ignore: cast_nullable_to_non_nullable
              as TransactionType?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TransactionModel implements _TransactionModel {
  const _$_TransactionModel(
      {@JsonKey(name: "transaction_id") required this.transactionId,
      @JsonKey(name: "amount") required this.amount,
      @JsonKey(name: "transaction_type") required this.transactionType,
      @JsonKey(name: "category") required this.category,
      @JsonKey(name: "date") required this.date,
      @JsonKey(name: "description") required this.description});

  factory _$_TransactionModel.fromJson(Map<String, dynamic> json) =>
      _$$_TransactionModelFromJson(json);

  @override
  @JsonKey(name: "transaction_id")
  final int transactionId;
  @override
  @JsonKey(name: "amount")
  final String amount;
  @override
  @JsonKey(name: "transaction_type")
  final TransactionType? transactionType;
  @override
  @JsonKey(name: "category")
  final String? category;
  @override
  @JsonKey(name: "date")
  final DateTime? date;
  @override
  @JsonKey(name: "description")
  final String description;

  @override
  String toString() {
    return 'TransactionModel(transactionId: $transactionId, amount: $amount, transactionType: $transactionType, category: $category, date: $date, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TransactionModel &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.transactionType, transactionType) ||
                other.transactionType == transactionType) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, transactionId, amount,
      transactionType, category, date, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TransactionModelCopyWith<_$_TransactionModel> get copyWith =>
      __$$_TransactionModelCopyWithImpl<_$_TransactionModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TransactionModelToJson(
      this,
    );
  }
}

abstract class _TransactionModel implements TransactionModel {
  const factory _TransactionModel(
      {@JsonKey(name: "transaction_id")
          required final int transactionId,
      @JsonKey(name: "amount")
          required final String amount,
      @JsonKey(name: "transaction_type")
          required final TransactionType? transactionType,
      @JsonKey(name: "category")
          required final String? category,
      @JsonKey(name: "date")
          required final DateTime? date,
      @JsonKey(name: "description")
          required final String description}) = _$_TransactionModel;

  factory _TransactionModel.fromJson(Map<String, dynamic> json) =
      _$_TransactionModel.fromJson;

  @override
  @JsonKey(name: "transaction_id")
  int get transactionId;
  @override
  @JsonKey(name: "amount")
  String get amount;
  @override
  @JsonKey(name: "transaction_type")
  TransactionType? get transactionType;
  @override
  @JsonKey(name: "category")
  String? get category;
  @override
  @JsonKey(name: "date")
  DateTime? get date;
  @override
  @JsonKey(name: "description")
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$_TransactionModelCopyWith<_$_TransactionModel> get copyWith =>
      throw _privateConstructorUsedError;
}
