import 'package:hive_flutter/hive_flutter.dart';

class TODODatabase
{

 List todoList = [];

  final _myBox = Hive.box('TodoBox');



  void loadData()
  {
    todoList = _myBox.get("TODOList");
  }

  void updateDatabase()
  {
    _myBox.put("TODOList", todoList);
  }
}