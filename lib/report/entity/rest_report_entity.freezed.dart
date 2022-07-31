// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'rest_report_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RestReportEntity _$RestReportEntityFromJson(Map<String, dynamic> json) {
  return _RestReportEntity.fromJson(json);
}

/// @nodoc
mixin _$RestReportEntity {
  int? get id => throw _privateConstructorUsedError;
  DateTime get startedAt => throw _privateConstructorUsedError;
  DateTime get endedAt => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime? get deletedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RestReportEntityCopyWith<RestReportEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestReportEntityCopyWith<$Res> {
  factory $RestReportEntityCopyWith(
          RestReportEntity value, $Res Function(RestReportEntity) then) =
      _$RestReportEntityCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      DateTime startedAt,
      DateTime endedAt,
      DateTime createdAt,
      DateTime? deletedAt});
}

/// @nodoc
class _$RestReportEntityCopyWithImpl<$Res>
    implements $RestReportEntityCopyWith<$Res> {
  _$RestReportEntityCopyWithImpl(this._value, this._then);

  final RestReportEntity _value;
  // ignore: unused_field
  final $Res Function(RestReportEntity) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? startedAt = freezed,
    Object? endedAt = freezed,
    Object? createdAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      startedAt: startedAt == freezed
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endedAt: endedAt == freezed
          ? _value.endedAt
          : endedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deletedAt: deletedAt == freezed
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$$_RestReportEntityCopyWith<$Res>
    implements $RestReportEntityCopyWith<$Res> {
  factory _$$_RestReportEntityCopyWith(
          _$_RestReportEntity value, $Res Function(_$_RestReportEntity) then) =
      __$$_RestReportEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      DateTime startedAt,
      DateTime endedAt,
      DateTime createdAt,
      DateTime? deletedAt});
}

/// @nodoc
class __$$_RestReportEntityCopyWithImpl<$Res>
    extends _$RestReportEntityCopyWithImpl<$Res>
    implements _$$_RestReportEntityCopyWith<$Res> {
  __$$_RestReportEntityCopyWithImpl(
      _$_RestReportEntity _value, $Res Function(_$_RestReportEntity) _then)
      : super(_value, (v) => _then(v as _$_RestReportEntity));

  @override
  _$_RestReportEntity get _value => super._value as _$_RestReportEntity;

  @override
  $Res call({
    Object? id = freezed,
    Object? startedAt = freezed,
    Object? endedAt = freezed,
    Object? createdAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_$_RestReportEntity(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      startedAt: startedAt == freezed
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endedAt: endedAt == freezed
          ? _value.endedAt
          : endedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deletedAt: deletedAt == freezed
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RestReportEntity implements _RestReportEntity {
  const _$_RestReportEntity(
      {this.id,
      required this.startedAt,
      required this.endedAt,
      required this.createdAt,
      this.deletedAt});

  factory _$_RestReportEntity.fromJson(Map<String, dynamic> json) =>
      _$$_RestReportEntityFromJson(json);

  @override
  final int? id;
  @override
  final DateTime startedAt;
  @override
  final DateTime endedAt;
  @override
  final DateTime createdAt;
  @override
  final DateTime? deletedAt;

  @override
  String toString() {
    return 'RestReportEntity(id: $id, startedAt: $startedAt, endedAt: $endedAt, createdAt: $createdAt, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RestReportEntity &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.startedAt, startedAt) &&
            const DeepCollectionEquality().equals(other.endedAt, endedAt) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.deletedAt, deletedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(startedAt),
      const DeepCollectionEquality().hash(endedAt),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(deletedAt));

  @JsonKey(ignore: true)
  @override
  _$$_RestReportEntityCopyWith<_$_RestReportEntity> get copyWith =>
      __$$_RestReportEntityCopyWithImpl<_$_RestReportEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RestReportEntityToJson(
      this,
    );
  }
}

abstract class _RestReportEntity implements RestReportEntity {
  const factory _RestReportEntity(
      {final int? id,
      required final DateTime startedAt,
      required final DateTime endedAt,
      required final DateTime createdAt,
      final DateTime? deletedAt}) = _$_RestReportEntity;

  factory _RestReportEntity.fromJson(Map<String, dynamic> json) =
      _$_RestReportEntity.fromJson;

  @override
  int? get id;
  @override
  DateTime get startedAt;
  @override
  DateTime get endedAt;
  @override
  DateTime get createdAt;
  @override
  DateTime? get deletedAt;
  @override
  @JsonKey(ignore: true)
  _$$_RestReportEntityCopyWith<_$_RestReportEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
