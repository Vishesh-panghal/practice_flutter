// ignore_for_file: constant_identifier_names

import 'dart:io';

import 'package:authentication_pages/provider_practice/student_model.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class ListDatabase {
  ListDatabase._();
  static final ListDatabase db = ListDatabase._();

  Database? _database;

  static const NOTE_TABLE = 'note';
  static const NOTE_COLUMN_ID = 'column_id';
  static const NOTE_COLUMN_TITLE = 'column_title';
  static const NOTE_COLUMN_CLASS = 'column_class';

  Future<Database> getDB() async {
    if (_database != null) {
      return _database!;
    } else {
      return await initDB();
    }
  }

  Future<Database> initDB() async {
    Directory documentDirectory = await getApplicationDocumentsDirectory();
    var dbPath = join(documentDirectory.path, 'StudentList.db');
    return openDatabase(
      dbPath,
      version: 1,
      onCreate: (db, version) {
        return db.execute(
            'CREATE TABLE $NOTE_TABLE ($NOTE_COLUMN_ID INTEGER PRIMARY KEY  AUTOINCREMENT),$NOTE_COLUMN_TITLE TEXT,$NOTE_COLUMN_CLASS TEXT');
      },
    );
  }

  Future<bool> addList(studentModal stdnt) async {
    var db = await getDB();
    int rowsEffected = await db.insert(NOTE_TABLE, {
      ListDatabase.NOTE_COLUMN_TITLE: stdnt.title,
      ListDatabase.NOTE_COLUMN_CLASS: stdnt.cls,
    });
    if (rowsEffected > 0) {
      return true;
    } else {
      return false;
    }
  }

  Future<bool> updateList(studentModal stdnt) async {
    var db = await getDB();
    var count = await db.update(NOTE_TABLE, stdnt.toMap(),
        where: '$NOTE_COLUMN_ID = ? ', whereArgs: ['${stdnt.id}']);
    return count > 0;
  }

  Future<bool> deleteList(int id) async {
    var db = await getDB();
    var count = await db
        .delete(NOTE_TABLE, where: "$NOTE_COLUMN_ID=?", whereArgs: [id]);
    return count > 0;
  }

  Future<List<studentModal>>fetchAllList()async{
    var db = await getDB();
    List<Map<String,dynamic>> lists = await db.query(NOTE_TABLE);
    List<studentModal> studentList = [];
    for(Map<String,dynamic> list in lists)
    {
      studentList.add(studentModal.fromMap(list));
    }
    return studentList;
  }
}
