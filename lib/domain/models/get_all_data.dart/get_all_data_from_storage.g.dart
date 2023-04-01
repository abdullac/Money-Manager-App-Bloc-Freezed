// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_data_from_storage.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetAllDataFromStorage _$$_GetAllDataFromStorageFromJson(
        Map<String, dynamic> json) =>
    _$_GetAllDataFromStorage(
      data: (json['data'] as List<dynamic>)
          .map((e) => StorageModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_GetAllDataFromStorageToJson(
        _$_GetAllDataFromStorage instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
