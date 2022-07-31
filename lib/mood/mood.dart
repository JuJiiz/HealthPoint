import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'mood.freezed.dart';

@freezed
class Mood with _$Mood {
  const factory Mood.angry({
    @Default(1) int id,
    @Default(Color(0xFFD20001)) Color color,
    @Default('assets/images/ic_mood_angry.svg') String svgAsset,
    @Default(-4) int hpEffect,
    @Default(1) int strEffect,
    @Default(-2) int chaEffect,
    @Default(0) int willEffect,
    @Default(0) int agiEffect,
    @Default(-1) int intEffect,
  }) = _MoodAngry;

  const factory Mood.average({
    @Default(2) int id,
    @Default(Color(0xFFF59B23)) Color color,
    @Default('assets/images/ic_mood_average.svg') String svgAsset,
    @Default(-1) int hpEffect,
    @Default(0) int strEffect,
    @Default(0) int chaEffect,
    @Default(0) int willEffect,
    @Default(0) int agiEffect,
    @Default(0) int intEffect,
  }) = _MoodAnervous;

  const factory Mood.disgusting({
    @Default(3) int id,
    @Default(Color(0xFF00A400)) Color color,
    @Default('assets/images/ic_mood_disgusting.svg') String svgAsset,
    @Default(-2) int hpEffect,
    @Default(0) int strEffect,
    @Default(-1) int chaEffect,
    @Default(0) int willEffect,
    @Default(0) int agiEffect,
    @Default(0) int intEffect,
  }) = _MoodDisgusting;

  const factory Mood.joy({
    @Default(4) int id,
    @Default(Color(0xFFE2E111)) Color color,
    @Default('assets/images/ic_mood_joy.svg') String svgAsset,
    @Default(3) int hpEffect,
    @Default(0) int strEffect,
    @Default(2) int chaEffect,
    @Default(1) int willEffect,
    @Default(0) int agiEffect,
    @Default(1) int intEffect,
  }) = _MoodJoy;

  const factory Mood.nervous({
    @Default(5) int id,
    @Default(Color(0xFF6200A5)) Color color,
    @Default('assets/images/ic_mood_nervous.svg') String svgAsset,
    @Default(-3) int hpEffect,
    @Default(0) int strEffect,
    @Default(0) int chaEffect,
    @Default(0) int willEffect,
    @Default(1) int agiEffect,
    @Default(-2) int intEffect,
  }) = _MoodNervous;

  const factory Mood.productive({
    @Default(6) int id,
    @Default(Color(0xFFFF21B4)) Color color,
    @Default('assets/images/ic_mood_productive.svg') String svgAsset,
    @Default(5) int hpEffect,
    @Default(0) int strEffect,
    @Default(0) int chaEffect,
    @Default(2) int willEffect,
    @Default(1) int agiEffect,
    @Default(2) int intEffect,
  }) = _MoodProductive;

  const factory Mood.sad({
    @Default(7) int id,
    @Default(Color(0xFF016CD4)) Color color,
    @Default('assets/images/ic_mood_sad.svg') String svgAsset,
    @Default(-7) int hpEffect,
    @Default(-2) int strEffect,
    @Default(-1) int chaEffect,
    @Default(-2) int willEffect,
    @Default(-2) int agiEffect,
    @Default(-1) int intEffect,
  }) = _MoodSad;

  const factory Mood.tried({
    @Default(8) int id,
    @Default(Color(0xFF717171)) Color color,
    @Default('assets/images/ic_mood_tried.svg') String svgAsset,
    @Default(-10) int hpEffect,
    @Default(-2) int strEffect,
    @Default(0) int chaEffect,
    @Default(0) int willEffect,
    @Default(-2) int agiEffect,
    @Default(-2) int intEffect,
  }) = _MoodTries;
}
