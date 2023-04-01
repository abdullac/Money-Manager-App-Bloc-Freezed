import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:money_manger_bloc/domain/models/storage_model.dart';
part 'get_all_data_from_storage.freezed.dart';
part 'get_all_data_from_storage.g.dart';

@freezed
class GetAllDataFromStorage with _$GetAllDataFromStorage {
  const factory GetAllDataFromStorage({
    @JsonKey(name: 'data') required List<StorageModel> data,
  }) = _GetAllDataFromStorage;

  factory GetAllDataFromStorage.fromJson(Map<String, dynamic> json) =>
      _$GetAllDataFromStorageFromJson(json);
}
