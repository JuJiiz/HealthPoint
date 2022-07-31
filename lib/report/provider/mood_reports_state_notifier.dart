import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:healtpoint/core/app_database.dart';
import 'package:healtpoint/core/database_helper.dart';
import 'package:healtpoint/report/entity/mood_report_entity.dart';
import 'package:healtpoint/report/provider/report_provider.dart';
import 'package:sqflite/sqflite.dart';

class MoodReportStateNotifier extends StateNotifier<List<MoodReportEntity>> {
  final Ref _ref;

  MoodReportStateNotifier(this._ref) : super([]);

  Future<List<MoodReportEntity>> fetch() async {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day).toIso8601String();

    final databaseHelper = _ref.read(appDatabaseProvider);
    final raws = await databaseHelper.queryExistByToday(
      DatabaseHelper.dbTableMoods,
      today,
    );
    final entities = raws.map((raw) => MoodReportEntity.fromJson(raw)).toList();

    _ref.read(moodReportsProvider.notifier).state = entities;
    return entities;
  }

  Future<int> add(MoodReportEntity entity) async {
    final database = await _ref.read(appDatabaseProvider).database;
    final resultID = await database.insert(
      DatabaseHelper.dbTableMoods,
      entity.toJson(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
    await fetch();
    return resultID;
  }

  Future remove(int id) async {
    final databaseHelper = _ref.read(appDatabaseProvider);
    final resultID = await databaseHelper.softDeleteByID(
      DatabaseHelper.dbTableMoods,
      id,
    );
    await fetch();
    return resultID;
  }
}
