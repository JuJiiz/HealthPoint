// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'report_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ReportEntity {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MoodReportEntity entity, Mood mood) mood,
    required TResult Function(RestReportEntity entity, String title,
            String sleepTimeRange, int recoverPercent, String recoverLabel)
        rest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(MoodReportEntity entity, Mood mood)? mood,
    TResult Function(RestReportEntity entity, String title,
            String sleepTimeRange, int recoverPercent, String recoverLabel)?
        rest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MoodReportEntity entity, Mood mood)? mood,
    TResult Function(RestReportEntity entity, String title,
            String sleepTimeRange, int recoverPercent, String recoverLabel)?
        rest,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReportMood value) mood,
    required TResult Function(ReportRest value) rest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ReportMood value)? mood,
    TResult Function(ReportRest value)? rest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReportMood value)? mood,
    TResult Function(ReportRest value)? rest,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportEntityCopyWith<$Res> {
  factory $ReportEntityCopyWith(
          ReportEntity value, $Res Function(ReportEntity) then) =
      _$ReportEntityCopyWithImpl<$Res>;
}

/// @nodoc
class _$ReportEntityCopyWithImpl<$Res> implements $ReportEntityCopyWith<$Res> {
  _$ReportEntityCopyWithImpl(this._value, this._then);

  final ReportEntity _value;
  // ignore: unused_field
  final $Res Function(ReportEntity) _then;
}

/// @nodoc
abstract class _$$ReportMoodCopyWith<$Res> {
  factory _$$ReportMoodCopyWith(
          _$ReportMood value, $Res Function(_$ReportMood) then) =
      __$$ReportMoodCopyWithImpl<$Res>;
  $Res call({MoodReportEntity entity, Mood mood});

  $MoodReportEntityCopyWith<$Res> get entity;
  $MoodCopyWith<$Res> get mood;
}

/// @nodoc
class __$$ReportMoodCopyWithImpl<$Res> extends _$ReportEntityCopyWithImpl<$Res>
    implements _$$ReportMoodCopyWith<$Res> {
  __$$ReportMoodCopyWithImpl(
      _$ReportMood _value, $Res Function(_$ReportMood) _then)
      : super(_value, (v) => _then(v as _$ReportMood));

  @override
  _$ReportMood get _value => super._value as _$ReportMood;

  @override
  $Res call({
    Object? entity = freezed,
    Object? mood = freezed,
  }) {
    return _then(_$ReportMood(
      entity: entity == freezed
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as MoodReportEntity,
      mood: mood == freezed
          ? _value.mood
          : mood // ignore: cast_nullable_to_non_nullable
              as Mood,
    ));
  }

  @override
  $MoodReportEntityCopyWith<$Res> get entity {
    return $MoodReportEntityCopyWith<$Res>(_value.entity, (value) {
      return _then(_value.copyWith(entity: value));
    });
  }

  @override
  $MoodCopyWith<$Res> get mood {
    return $MoodCopyWith<$Res>(_value.mood, (value) {
      return _then(_value.copyWith(mood: value));
    });
  }
}

/// @nodoc

class _$ReportMood implements ReportMood {
  const _$ReportMood({required this.entity, required this.mood});

  @override
  final MoodReportEntity entity;
  @override
  final Mood mood;

  @override
  String toString() {
    return 'ReportEntity.mood(entity: $entity, mood: $mood)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReportMood &&
            const DeepCollectionEquality().equals(other.entity, entity) &&
            const DeepCollectionEquality().equals(other.mood, mood));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(entity),
      const DeepCollectionEquality().hash(mood));

  @JsonKey(ignore: true)
  @override
  _$$ReportMoodCopyWith<_$ReportMood> get copyWith =>
      __$$ReportMoodCopyWithImpl<_$ReportMood>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MoodReportEntity entity, Mood mood) mood,
    required TResult Function(RestReportEntity entity, String title,
            String sleepTimeRange, int recoverPercent, String recoverLabel)
        rest,
  }) {
    return mood(entity, this.mood);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(MoodReportEntity entity, Mood mood)? mood,
    TResult Function(RestReportEntity entity, String title,
            String sleepTimeRange, int recoverPercent, String recoverLabel)?
        rest,
  }) {
    return mood?.call(entity, this.mood);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MoodReportEntity entity, Mood mood)? mood,
    TResult Function(RestReportEntity entity, String title,
            String sleepTimeRange, int recoverPercent, String recoverLabel)?
        rest,
    required TResult orElse(),
  }) {
    if (mood != null) {
      return mood(entity, this.mood);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReportMood value) mood,
    required TResult Function(ReportRest value) rest,
  }) {
    return mood(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ReportMood value)? mood,
    TResult Function(ReportRest value)? rest,
  }) {
    return mood?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReportMood value)? mood,
    TResult Function(ReportRest value)? rest,
    required TResult orElse(),
  }) {
    if (mood != null) {
      return mood(this);
    }
    return orElse();
  }
}

abstract class ReportMood implements ReportEntity {
  const factory ReportMood(
      {required final MoodReportEntity entity,
      required final Mood mood}) = _$ReportMood;

  MoodReportEntity get entity;
  Mood get mood;
  @JsonKey(ignore: true)
  _$$ReportMoodCopyWith<_$ReportMood> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReportRestCopyWith<$Res> {
  factory _$$ReportRestCopyWith(
          _$ReportRest value, $Res Function(_$ReportRest) then) =
      __$$ReportRestCopyWithImpl<$Res>;
  $Res call(
      {RestReportEntity entity,
      String title,
      String sleepTimeRange,
      int recoverPercent,
      String recoverLabel});

  $RestReportEntityCopyWith<$Res> get entity;
}

/// @nodoc
class __$$ReportRestCopyWithImpl<$Res> extends _$ReportEntityCopyWithImpl<$Res>
    implements _$$ReportRestCopyWith<$Res> {
  __$$ReportRestCopyWithImpl(
      _$ReportRest _value, $Res Function(_$ReportRest) _then)
      : super(_value, (v) => _then(v as _$ReportRest));

  @override
  _$ReportRest get _value => super._value as _$ReportRest;

  @override
  $Res call({
    Object? entity = freezed,
    Object? title = freezed,
    Object? sleepTimeRange = freezed,
    Object? recoverPercent = freezed,
    Object? recoverLabel = freezed,
  }) {
    return _then(_$ReportRest(
      entity: entity == freezed
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as RestReportEntity,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      sleepTimeRange: sleepTimeRange == freezed
          ? _value.sleepTimeRange
          : sleepTimeRange // ignore: cast_nullable_to_non_nullable
              as String,
      recoverPercent: recoverPercent == freezed
          ? _value.recoverPercent
          : recoverPercent // ignore: cast_nullable_to_non_nullable
              as int,
      recoverLabel: recoverLabel == freezed
          ? _value.recoverLabel
          : recoverLabel // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $RestReportEntityCopyWith<$Res> get entity {
    return $RestReportEntityCopyWith<$Res>(_value.entity, (value) {
      return _then(_value.copyWith(entity: value));
    });
  }
}

/// @nodoc

class _$ReportRest implements ReportRest {
  const _$ReportRest(
      {required this.entity,
      required this.title,
      required this.sleepTimeRange,
      required this.recoverPercent,
      required this.recoverLabel});

  @override
  final RestReportEntity entity;
  @override
  final String title;
  @override
  final String sleepTimeRange;
  @override
  final int recoverPercent;
  @override
  final String recoverLabel;

  @override
  String toString() {
    return 'ReportEntity.rest(entity: $entity, title: $title, sleepTimeRange: $sleepTimeRange, recoverPercent: $recoverPercent, recoverLabel: $recoverLabel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReportRest &&
            const DeepCollectionEquality().equals(other.entity, entity) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.sleepTimeRange, sleepTimeRange) &&
            const DeepCollectionEquality()
                .equals(other.recoverPercent, recoverPercent) &&
            const DeepCollectionEquality()
                .equals(other.recoverLabel, recoverLabel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(entity),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(sleepTimeRange),
      const DeepCollectionEquality().hash(recoverPercent),
      const DeepCollectionEquality().hash(recoverLabel));

  @JsonKey(ignore: true)
  @override
  _$$ReportRestCopyWith<_$ReportRest> get copyWith =>
      __$$ReportRestCopyWithImpl<_$ReportRest>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MoodReportEntity entity, Mood mood) mood,
    required TResult Function(RestReportEntity entity, String title,
            String sleepTimeRange, int recoverPercent, String recoverLabel)
        rest,
  }) {
    return rest(entity, title, sleepTimeRange, recoverPercent, recoverLabel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(MoodReportEntity entity, Mood mood)? mood,
    TResult Function(RestReportEntity entity, String title,
            String sleepTimeRange, int recoverPercent, String recoverLabel)?
        rest,
  }) {
    return rest?.call(
        entity, title, sleepTimeRange, recoverPercent, recoverLabel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MoodReportEntity entity, Mood mood)? mood,
    TResult Function(RestReportEntity entity, String title,
            String sleepTimeRange, int recoverPercent, String recoverLabel)?
        rest,
    required TResult orElse(),
  }) {
    if (rest != null) {
      return rest(entity, title, sleepTimeRange, recoverPercent, recoverLabel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReportMood value) mood,
    required TResult Function(ReportRest value) rest,
  }) {
    return rest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ReportMood value)? mood,
    TResult Function(ReportRest value)? rest,
  }) {
    return rest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReportMood value)? mood,
    TResult Function(ReportRest value)? rest,
    required TResult orElse(),
  }) {
    if (rest != null) {
      return rest(this);
    }
    return orElse();
  }
}

abstract class ReportRest implements ReportEntity {
  const factory ReportRest(
      {required final RestReportEntity entity,
      required final String title,
      required final String sleepTimeRange,
      required final int recoverPercent,
      required final String recoverLabel}) = _$ReportRest;

  RestReportEntity get entity;
  String get title;
  String get sleepTimeRange;
  int get recoverPercent;
  String get recoverLabel;
  @JsonKey(ignore: true)
  _$$ReportRestCopyWith<_$ReportRest> get copyWith =>
      throw _privateConstructorUsedError;
}
