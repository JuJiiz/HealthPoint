import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:healtpoint/core/database_helper.dart';

final appDatabaseProvider = Provider<DatabaseHelper>(
  (ref) => DatabaseHelper.instance,
);
