import 'package:hive_flutter/hive_flutter.dart';

class TODODatabase {
  List todoList = [];

  final _myBox = Hive.box('TodoBox');

  void loadData() {
    // Check if the key exists in the box before trying to get the value.
    if (_myBox.containsKey("TODOList")) {
      todoList = _myBox.get("TODOList") as List;
    }
  }

  void updateDatabase() {
    _myBox.put("TODOList", todoList);
  }
}
