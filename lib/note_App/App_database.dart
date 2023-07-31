// ignore_for_file: constant_identifier_names

import 'dart:io';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class AppDatabase {
  AppDatabase._();
  static final AppDatabase db = AppDatabase._();

  Database? _database;

  static const NOTE_TABLE = 'note';
  static const NOTE_COLUMN_ID = 'note_id';
  static const NOTE_COLUMN_TITLE = 'title';
  static const NOTE_COLUMN_DESC = 'desc';

  Future<Database> getDB() async {
    if (_database != null) {
      return _database!;
    } else {
      return await initDB();
    }
  }

  Future<Database> initDB() async {
    Directory doucumentDirectory = await getApplicationDocumentsDirectory();
    var dbPath = join(doucumentDirectory.path, 'NotesDB.db');
    return openDatabase(
      dbPath,
      version: 1,
      onCreate: (db, version) {
        return db.execute(
            'Create table $NOTE_TABLE ($NOTE_COLUMN_ID integer primary key autoincement),$NOTE_COLUMN_TITLE text,$NOTE_COLUMN_DESC text');
      },
    );
  }

  Future<bool> addNote(String title, String desc) async {
    var db = await getDB();
    int rowsEffected = await db.insert(NOTE_TABLE, {
      AppDatabase.NOTE_COLUMN_TITLE: title,
      AppDatabase.NOTE_COLUMN_DESC: desc
    });
    if (rowsEffected > 0) {
      return true;
    } else {
      return false;
    }
  }

  Future<List<Map<String, dynamic>>> fetchAllNotes() async {
    var db = await getDB();
    List<Map<String, dynamic>> notes = await db.query(NOTE_TABLE);
    return notes;
  }
}
