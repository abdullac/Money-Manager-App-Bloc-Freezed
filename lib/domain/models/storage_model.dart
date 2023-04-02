


import 'package:freezed_annotation/freezed_annotation.dart';
part 'storage_model.freezed.dart';
part 'storage_model.g.dart';

///  local server storage json format this like (_id, title, content).
///  transactionId to/from '_id'.
///  amount to/from 'title'.
///  give TransactionModel to 'content' after covert to string.
///  get TransactionModel from 'content'.
@freezed
class StorageModel with _$StorageModel{
  const factory StorageModel({
    @JsonKey(name: "_id") required String id,
    @JsonKey(name: "title") required String title,
    @JsonKey(name: "content") required String content,
  }) = _StorageModel;

  factory StorageModel.fromJson(Map<String, dynamic> json) => _$StorageModelFromJson(json);
}