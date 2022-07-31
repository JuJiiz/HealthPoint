// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'mood_report_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MoodReportEntity _$MoodReportEntityFromJson(Map<String, dynamic> json) {
  return _MoodReportEntity.fromJson(json);
}

/// @nodoc
mixin _$MoodReportEntity {
  int? get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int get moodID => throw _privateConstructorUsedError;
  int get volume => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime? get deletedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MoodReportEntityCopyWith<MoodReportEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoodReportEntityCopyWith<$Res> {
  factory $MoodReportEntityCopyWith(
          MoodReportEntity value, $Res Function(MoodReportEntity) then) =
      _$MoodReportEntityCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String title,
      int moodID,
      int volume,
      DateTime createdAt,
      DateTime? deletedAt});
}

/// @nodoc
class _$MoodReportEntityCopyWithImpl<$Res>
    implements $MoodReportEntityCopyWith<$Res> {
  _$MoodReportEntityCopyWithImpl(this._value, this._then);

  final MoodReportEntity _value;
  // ignore: unused_field
  final $Res Function(MoodReportEntity) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? moodID = freezed,
    Object? volume = freezed,
    Object? createdAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      moodID: moodID == freezed
          ? _value.moodID
          : moodID // ignore: cast_nullable_to_non_nullable
              as int,
      volume: volume == freezed
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as int,
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
abstract class _$$_MoodReportEntityCopyWith<$Res>
    implements $MoodReportEntityCopyWith<$Res> {
  factory _$$_MoodReportEntityCopyWith(
          _$_MoodReportEntity value, $Res Function(_$_MoodReportEntity) then) =
      __$$_MoodReportEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String title,
      int moodID,
      int volume,
      DateTime createdAt,
      DateTime? deletedAt});
}

/// @nodoc
class __$$_MoodReportEntityCopyWithImpl<$Res>
    extends _$MoodReportEntityCopyWithImpl<$Res>
    implements _$$_MoodReportEntityCopyWith<$Res> {
  __$$_MoodReportEntityCopyWithImpl(
      _$_MoodReportEntity _value, $Res Function(_$_MoodReportEntity) _then)
      : super(_value, (v) => _then(v as _$_MoodReportEntity));

  @override
  _$_MoodReportEntity get _value => super._value as _$_MoodReportEntity;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? moodID = freezed,
    Object? volume = freezed,
    Object? createdAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_$_MoodReportEntity(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      moodID: moodID == freezed
          ? _value.moodID
          : moodID // ignore: cast_nullable_to_non_nullable
              as int,
      volume: volume == freezed
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as int,
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
class _$_MoodReportEntity implements _MoodReportEntity {
  const _$_MoodReportEntity(
      {this.id,
      required this.title,
      required this.moodID,
      required this.volume,
      required this.createdAt,
      this.deletedAt});

  factory _$_MoodReportEntity.fromJson(Map<String, dynamic> json) =>
      _$$_MoodReportEntityFromJson(json);

  @override
  final int? id;
  @override
  final String title;
  @override
  final int moodID;
  @override
  final int volume;
  @override
  final DateTime createdAt;
  @override
  final DateTime? deletedAt;

  @override
  String toString() {
    return 'MoodReportEntity(id: $id, title: $title, moodID: $moodID, volume: $volume, createdAt: $createdAt, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MoodReportEntity &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.moodID, moodID) &&
            const DeepCollectionEquality().equals(other.volume, volume) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.deletedAt, deletedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(moodID),
      const DeepCollectionEquality().hash(volume),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(deletedAt));

  @JsonKey(ignore: true)
  @override
  _$$_MoodReportEntityCopyWith<_$_MoodReportEntity> get copyWith =>
      __$$_MoodReportEntityCopyWithImpl<_$_MoodReportEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MoodReportEntityToJson(
      this,
    );
  }
}

abstract class _MoodReportEntity implements MoodReportEntity {
  const factory _MoodReportEntity(
      {final int? id,
      required final String title,
      required final int moodID,
      required final int volume,
      required final DateTime createdAt,
      final DateTime? deletedAt}) = _$_MoodReportEntity;

  factory _MoodReportEntity.fromJson(Map<String, dynamic> json) =
      _$_MoodReportEntity.fromJson;

  @override
  int? get id;
  @override
  String get title;
  @override
  int get moodID;
  @override
  int get volume;
  @override
  DateTime get createdAt;
  @override
  DateTime? get deletedAt;
  @override
  @JsonKey(ignore: true)
  _$$_MoodReportEntityCopyWith<_$_MoodReportEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
