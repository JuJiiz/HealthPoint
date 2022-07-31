import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:healtpoint/core/app_database.dart';
import 'package:healtpoint/core/database_helper.dart';
import 'package:healtpoint/report/entity/rest_report_entity.dart';
import 'package:healtpoint/report/provider/report_provider.dart';
import 'package:sqflite/sqflite.dart';

class RestReportStateNotifier extends StateNotifier<List<RestReportEntity>> {
  final Ref _ref;

  RestReportStateNotifier(this._ref) : super([]);

  Future<List<RestReportEntity>> fetch() async {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day).toIso8601String();

    final databaseHelper = _ref.read(appDatabaseProvider);
    final raws = await databaseHelper.queryExistByToday(
      DatabaseHelper.dbTableRests,
      today,
    );
    log('rests raws: $raws');
    final entities = raws.map((raw) => RestReportEntity.fromJson(raw)).toList();

    _ref.read(restReportsProvider.notifier).state = entities;
    return entities;
  }

  Future<int> add(DateTime start, DateTime end) async {
    final entity = RestReportEntity(
      startedAt: start,
      endedAt: end,
      createdAt: DateTime.now(),
    );
    final database = await _ref.read(appDatabaseProvider).database;
    final resultID = await database.insert(
      DatabaseHelper.dbTableRests,
      entity.toJson(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
    await fetch();
    return resultID;
  }

  Future remove(int id) async {
    final databaseHelper = _ref.read(appDatabaseProvider);
    final resultID = await databaseHelper.softDeleteByID(
      DatabaseHelper.dbTableRests,
      id,
    );
    await fetch();
    return resultID;
  }
}
