import 'dart:io';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class AppDatabase {
  //We create a private Constuctor because after this no public constructor were created.
  AppDatabase._();
  // We want singelton class so we created this.
  static final AppDatabase db = AppDatabase._();

// Database variable
  Database? _database;

  // Now we call Database here:-
  Future<Database> getDB() async {
    // Here we check that if we have already Database created,than go on that otherwise create a database.
    if (_database != null) {
      return _database!;
    } else {
      return await initDb();
    }
  }

  // Initilize Databse here:-
  Future<Database> initDb() async {
    // Extract path of machine to store database
    Directory doucumentDirectory = await getApplicationDocumentsDirectory();

    // Make a new folder to store data...
    var dbPath = join(doucumentDirectory.path, "noteDB.db");
    // here we return database with path,version,and onCreate..
    return openDatabase(
      dbPath,
      version: 1,
      onCreate: (db, version) {
        // Here we assign table name and their Columns...(All SQL queries)..
        db.execute(
            "Create table note ( note_id integer primary key autoincrement, title text, desc text )");
      },
    );
  }

  // Add note:-
  Future<bool> addNote(String title, String desc) async {
    var db = await getDB();
    // SQL insert function implemented here:-
    var rowsEffected = await db.insert('note', {'title': title, 'desc': desc});
    // This is just like a check that the insert note added successfully or notn?
    if (rowsEffected > 0) {
      return true;
    } else {
      return false;
    }
  }

  // Fetch all notes here:-
  Future<List<Map<String, dynamic>>> fetchAllNotes() async {
    var db = await getDB();
    //here we fetch whole table (named as note).
    List<Map<String, dynamic>> notes = await db.query('note');
    return notes;
  }
}
