// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'storage_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StorageModel _$StorageModelFromJson(Map<String, dynamic> json) {
  return _StorageModel.fromJson(json);
}

/// @nodoc
mixin _$StorageModel {
  @JsonKey(name: "_id")
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: "content")
  String get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StorageModelCopyWith<StorageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StorageModelCopyWith<$Res> {
  factory $StorageModelCopyWith(
          StorageModel value, $Res Function(StorageModel) then) =
      _$StorageModelCopyWithImpl<$Res, StorageModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String id,
      @JsonKey(name: "title") String title,
      @JsonKey(name: "content") String content});
}

/// @nodoc
class _$StorageModelCopyWithImpl<$Res, $Val extends StorageModel>
    implements $StorageModelCopyWith<$Res> {
  _$StorageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StorageModelCopyWith<$Res>
    implements $StorageModelCopyWith<$Res> {
  factory _$$_StorageModelCopyWith(
          _$_StorageModel value, $Res Function(_$_StorageModel) then) =
      __$$_StorageModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String id,
      @JsonKey(name: "title") String title,
      @JsonKey(name: "content") String content});
}

/// @nodoc
class __$$_StorageModelCopyWithImpl<$Res>
    extends _$StorageModelCopyWithImpl<$Res, _$_StorageModel>
    implements _$$_StorageModelCopyWith<$Res> {
  __$$_StorageModelCopyWithImpl(
      _$_StorageModel _value, $Res Function(_$_StorageModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? content = null,
  }) {
    return _then(_$_StorageModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StorageModel implements _StorageModel {
  const _$_StorageModel(
      {@JsonKey(name: "_id") required this.id,
      @JsonKey(name: "title") required this.title,
      @JsonKey(name: "content") required this.content});

  factory _$_StorageModel.fromJson(Map<String, dynamic> json) =>
      _$$_StorageModelFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String id;
  @override
  @JsonKey(name: "title")
  final String title;
  @override
  @JsonKey(name: "content")
  final String content;

  @override
  String toString() {
    return 'StorageModel(id: $id, title: $title, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StorageModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StorageModelCopyWith<_$_StorageModel> get copyWith =>
      __$$_StorageModelCopyWithImpl<_$_StorageModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StorageModelToJson(
      this,
    );
  }
}

abstract class _StorageModel implements StorageModel {
  const factory _StorageModel(
          {@JsonKey(name: "_id") required final String id,
          @JsonKey(name: "title") required final String title,
          @JsonKey(name: "content") required final String content}) =
      _$_StorageModel;

  factory _StorageModel.fromJson(Map<String, dynamic> json) =
      _$_StorageModel.fromJson;

  @override
  @JsonKey(name: "_id")
  String get id;
  @override
  @JsonKey(name: "title")
  String get title;
  @override
  @JsonKey(name: "content")
  String get content;
  @override
  @JsonKey(ignore: true)
  _$$_StorageModelCopyWith<_$_StorageModel> get copyWith =>
      throw _privateConstructorUsedError;
}
