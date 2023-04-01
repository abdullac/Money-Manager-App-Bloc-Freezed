


import 'package:freezed_annotation/freezed_annotation.dart';
part 'storage_model.freezed.dart';
part 'storage_model.g.dart';

@freezed
class StorageModel with _$StorageModel{
  const factory StorageModel({
    @JsonKey(name: "_id") required String id,
    @JsonKey(name: "title") required String title,
    @JsonKey(name: "content") required String content,
  }) = _StorageModel;

  factory StorageModel.fromJson(Map<String, dynamic> json) => _$StorageModelFromJson(json);
}