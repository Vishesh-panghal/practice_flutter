import 'package:authentication_pages/note_App/App_database.dart';

class NoteModel {
  int? note_id;
  String title;
  String desc;

  NoteModel({this.note_id, required this.title, required this.desc});

  // create a note model from map data
  factory NoteModel.fromMap(Map<String, dynamic> map) {
    return NoteModel(
        note_id: map[AppDatabase.NOTE_COLUMN_ID],
        title: map[AppDatabase.NOTE_COLUMN_TITLE],
        desc: map[AppDatabase.NOTE_COLUMN_DESC]);
  }

  //creating a map from note model
  Map<String, dynamic> toMap() {
    return {
      AppDatabase.NOTE_COLUMN_ID: note_id,
      AppDatabase.NOTE_COLUMN_TITLE: title,
      AppDatabase.NOTE_COLUMN_DESC: desc,
    };
  }
}
