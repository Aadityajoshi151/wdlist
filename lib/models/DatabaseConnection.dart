import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

class DatabaseConnection
{
  setDatabase() async
  {
    var directory = await getApplicationDocumentsDirectory();
    var path = join(directory.path, "db_tasks");
    var database = await openDatabase(path,version: 1, onCreate: _onCreatingDatabase);
    return database;
  }
  _onCreatingDatabase(Database database, int version) async
  {
    await database.execute("CREATE TABLE Morning(id: INTEGER PRIMARY KEY, task: TEXT)");
    await database.execute("CREATE TABLE Evening(id: INTEGER PRIMARY KEY, task: TEXT)");
    await database.execute("CREATE TABLE Weekend(id: INTEGER PRIMARY KEY, task: TEXT)");
  }
}