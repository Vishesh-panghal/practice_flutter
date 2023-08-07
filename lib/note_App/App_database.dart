// ignore_for_file: constant_identifier_names

import 'dart:io';

import 'package:authentication_pages/note_App/note_Model.dart';
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

  Future<bool> addNote(NoteModel note) async {
    var db = await getDB();
    int rowsEffected = await db.insert(NOTE_TABLE, {
      AppDatabase.NOTE_COLUMN_TITLE: note.title,
      AppDatabase.NOTE_COLUMN_DESC: note.desc
    });
    if (rowsEffected > 0) {
      return true;
    } else {
      return false;
    }
  }

  Future<bool> updateNote(NoteModel note) async {
    var db = await getDB();
    var count = await db.update(NOTE_TABLE, note.toMap(),
        where: "$NOTE_COLUMN_ID = ${note.note_id}");
    return count > 0;
  }

  Future<bool> deleteNote(int id) async {
    var db = await getDB();

    var count = await db
        .delete(NOTE_TABLE, where: "$NOTE_COLUMN_ID = ?", whereArgs: ['$id']);
    return count > 0;
  }

  Future<List<NoteModel>> fetchAllNotes() async {
    var db = await getDB();
    List<Map<String, dynamic>> notes = await db.query(NOTE_TABLE);
    List<NoteModel> listNote= [];
    for(Map<String,dynamic>note in notes)
    {
      listNote.add(NoteModel.fromMap(note));
    }
    return listNote;
  }
}
