// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_all_data_from_storage.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetAllDataFromStorage _$GetAllDataFromStorageFromJson(
    Map<String, dynamic> json) {
  return _GetAllDataFromStorage.fromJson(json);
}

/// @nodoc
mixin _$GetAllDataFromStorage {
  @JsonKey(name: 'data')
  List<StorageModel> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetAllDataFromStorageCopyWith<GetAllDataFromStorage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAllDataFromStorageCopyWith<$Res> {
  factory $GetAllDataFromStorageCopyWith(GetAllDataFromStorage value,
          $Res Function(GetAllDataFromStorage) then) =
      _$GetAllDataFromStorageCopyWithImpl<$Res, GetAllDataFromStorage>;
  @useResult
  $Res call({@JsonKey(name: 'data') List<StorageModel> data});
}

/// @nodoc
class _$GetAllDataFromStorageCopyWithImpl<$Res,
        $Val extends GetAllDataFromStorage>
    implements $GetAllDataFromStorageCopyWith<$Res> {
  _$GetAllDataFromStorageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<StorageModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetAllDataFromStorageCopyWith<$Res>
    implements $GetAllDataFromStorageCopyWith<$Res> {
  factory _$$_GetAllDataFromStorageCopyWith(_$_GetAllDataFromStorage value,
          $Res Function(_$_GetAllDataFromStorage) then) =
      __$$_GetAllDataFromStorageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'data') List<StorageModel> data});
}

/// @nodoc
class __$$_GetAllDataFromStorageCopyWithImpl<$Res>
    extends _$GetAllDataFromStorageCopyWithImpl<$Res, _$_GetAllDataFromStorage>
    implements _$$_GetAllDataFromStorageCopyWith<$Res> {
  __$$_GetAllDataFromStorageCopyWithImpl(_$_GetAllDataFromStorage _value,
      $Res Function(_$_GetAllDataFromStorage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_GetAllDataFromStorage(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<StorageModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetAllDataFromStorage implements _GetAllDataFromStorage {
  const _$_GetAllDataFromStorage(
      {@JsonKey(name: 'data') required final List<StorageModel> data})
      : _data = data;

  factory _$_GetAllDataFromStorage.fromJson(Map<String, dynamic> json) =>
      _$$_GetAllDataFromStorageFromJson(json);

  final List<StorageModel> _data;
  @override
  @JsonKey(name: 'data')
  List<StorageModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'GetAllDataFromStorage(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetAllDataFromStorage &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetAllDataFromStorageCopyWith<_$_GetAllDataFromStorage> get copyWith =>
      __$$_GetAllDataFromStorageCopyWithImpl<_$_GetAllDataFromStorage>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetAllDataFromStorageToJson(
      this,
    );
  }
}

abstract class _GetAllDataFromStorage implements GetAllDataFromStorage {
  const factory _GetAllDataFromStorage(
          {@JsonKey(name: 'data') required final List<StorageModel> data}) =
      _$_GetAllDataFromStorage;

  factory _GetAllDataFromStorage.fromJson(Map<String, dynamic> json) =
      _$_GetAllDataFromStorage.fromJson;

  @override
  @JsonKey(name: 'data')
  List<StorageModel> get data;
  @override
  @JsonKey(ignore: true)
  _$$_GetAllDataFromStorageCopyWith<_$_GetAllDataFromStorage> get copyWith =>
      throw _privateConstructorUsedError;
}
