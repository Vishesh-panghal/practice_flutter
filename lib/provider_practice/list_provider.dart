import 'package:authentication_pages/provider_practice/list_database.dart';
import 'package:authentication_pages/provider_practice/student_model.dart';
import 'package:flutter/material.dart';

class ListDataProvider extends ChangeNotifier {
  List<studentModal> _mList = [];
  ListDatabase db = ListDatabase.db;
  // ListDataProvider({this.db});

  fetchList() async {
     _mList = await db.fetchAllList();
    notifyListeners();
  }

  List<studentModal> getList() {
    return _mList;
  }

  //Events:-
//Add data to List:-
  addData(studentModal newData) async {
    var check = await db.addList(newData);
    if (check) {
      fetchList();
      
    }
  }
//Remove data from List:-

// ⚫️ This function works with index:-
  removeData(int index) async{
    var check = await db.deleteList(index);
    if (check) {
      fetchList();
    }
    notifyListeners();
  }

// ⚫️ This function works with where function:-
// drawback of this function is it also delete duplicate data of same name and class...
  // removeDatahere(Map<String, dynamic> mData) {
  //   _mList.removeWhere((element) => element == mData);
  //   notifyListeners();
  // }

  updateData(studentModal mData, int index) {
    _mList[index] = mData;
    notifyListeners();
  }
}
