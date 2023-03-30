// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TransactionModel _$$_TransactionModelFromJson(Map<String, dynamic> json) =>
    _$_TransactionModel(
      transactionId: json['transaction_id'] as int,
      amount: json['amount'] as String,
      transactionType: $enumDecodeNullable(
          _$TransactionTypeEnumMap, json['transaction_type']),
      category: json['category'] as String?,
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      description: json['description'] as String,
    );

Map<String, dynamic> _$$_TransactionModelToJson(_$_TransactionModel instance) =>
    <String, dynamic>{
      'transaction_id': instance.transactionId,
      'amount': instance.amount,
      'transaction_type': _$TransactionTypeEnumMap[instance.transactionType],
      'category': instance.category,
      'date': instance.date?.toIso8601String(),
      'description': instance.description,
    };

const _$TransactionTypeEnumMap = {
  TransactionType.income: 'income',
  TransactionType.expense: 'expense',
  TransactionType.incomeAndExpense: 'incomeAndExpense',
};
