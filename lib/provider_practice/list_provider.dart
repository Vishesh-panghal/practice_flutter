import 'package:flutter/material.dart';

class ListDataProvider extends ChangeNotifier {
  final List<Map<String, dynamic>> _mList = [];

  List<Map<String, dynamic>> getList() {
    return _mList;
  }

  //Events:-
//Add data to List:-
  addData(Map<String, dynamic> newData) {
    _mList.add(newData);
    notifyListeners();
  }
//Remove data from List:-

// ⚫️ This function works with index:-
  removeData(int index) {
    _mList.removeAt(index);
    notifyListeners();
  }

// ⚫️ This function works with where function:-
// drawback of this function is it also duplicate data of same name and class...
  // removeDatahere(Map<String, dynamic> mData) {
  //   _mList.removeWhere((element) => element == mData);
  //   notifyListeners();
  // }

  updateData(Map<String, dynamic> mData, int index) {
    _mList[index] = mData;
    notifyListeners();
  }
}
