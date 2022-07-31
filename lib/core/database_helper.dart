import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static const String _dbName = 'health-point.db';
  static const int _dbVersion = 1;

  static const String _dbColumnId = 'id';
  static const String _dbColumnCreatedAt = 'createdAt';
  static const String _dbColumnDeletedAt = 'deletedAt';

  static const String dbTableRests = 'rests';
  static const String _dbRestsColumnStartedAt = 'startedAt';
  static const String _dbRestsColumnEndedAt = 'endedAt';

  static const String dbTableMoods = 'moods';
  static const String _dbMoodsColumnTitle = 'title';
  static const String _dbMoodsColumnMoodId = 'moodID';
  static const String _dbMoodsColumnVolume = 'volume';

  DatabaseHelper._instance();

  static final DatabaseHelper instance = DatabaseHelper._instance();

  static Database? _database;

  Future<Database> get database async {
    var db = _database;
    if (db != null) {
      return db;
    } else {
      final initDb = await _initDatabase();
      _database = initDb;
      return initDb;
    }
  }

  _initDatabase() async {
    final path = join(await getDatabasesPath(), _dbName);
    return await openDatabase(
      path,
      version: _dbVersion,
      onCreate: _onCreate,
    );
  }

  Future _onCreate(Database db, int version) async {
    await db.execute(
      'CREATE TABLE $dbTableRests('
      '$_dbColumnId INTEGER PRIMARY KEY AUTOINCREMENT, '
      '$_dbRestsColumnStartedAt DATETIME, '
      '$_dbRestsColumnEndedAt DATETIME, '
      '$_dbColumnCreatedAt DATETIME DEFAULT CURRENT_TIMESTAMP,'
      '$_dbColumnDeletedAt DATETIME DEFAULT NULL'
      ')',
    );

    await db.execute(
      'CREATE TABLE $dbTableMoods('
      '$_dbColumnId INTEGER PRIMARY KEY AUTOINCREMENT, '
      '$_dbMoodsColumnTitle TEXT, '
      '$_dbMoodsColumnMoodId INT, '
      '$_dbMoodsColumnVolume INT, '
      '$_dbColumnCreatedAt DATETIME DEFAULT CURRENT_TIMESTAMP,'
      '$_dbColumnDeletedAt DATETIME DEFAULT NULL'
      ')',
    );
  }

  Future<List<Map<String, Object?>>> queryExistByToday(
    String table,
    String today,
  ) async {
    final db = await database;
    return await db.rawQuery(
      'SELECT * FROM $table WHERE $_dbColumnDeletedAt IS NULL AND $_dbColumnCreatedAt >= ?',
      [today],
    );
  }

  Future softDeleteByID(String table, int id) async {
    final db = await database;
    final now = DateTime.now().toIso8601String();
    return await db.rawUpdate(
      'UPDATE $table SET $_dbColumnDeletedAt = ? WHERE id = ?',
      [now, id],
    );
  }
}
