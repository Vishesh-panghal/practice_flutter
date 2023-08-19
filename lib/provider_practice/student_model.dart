// ignore_for_file: camel_case_types

import 'list_database.dart';

class studentModal {
  int? id;
  String title;
  String cls;

  studentModal({this.id, required this.title, required this.cls});

  factory studentModal.fromMap(Map<String, dynamic> map) {
    return studentModal(
      id: map[ListDatabase.NOTE_COLUMN_ID],
      title: map[ListDatabase.NOTE_COLUMN_TITLE],
      cls: map[ListDatabase.NOTE_COLUMN_CLASS],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      ListDatabase.NOTE_COLUMN_ID: id,
      ListDatabase.NOTE_COLUMN_TITLE: title,
      ListDatabase.NOTE_COLUMN_CLASS: cls,
    };
  }
}
