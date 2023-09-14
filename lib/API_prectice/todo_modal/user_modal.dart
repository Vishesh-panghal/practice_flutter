import 'package:authentication_pages/API_prectice/todo_modal/todo_modal.dart';

class DataModal {
  int total;
  int skip;
  int limit;
  List<TodoModal> todos;

  DataModal({
    required this.total,
    required this.skip,
    required this.limit,
    required this.todos,
  });

  factory DataModal.fromJson(Map<String, dynamic> json) {
    List<TodoModal> mTodos = [];

    for (Map<String, dynamic> eachTodo in json['todos']) {
      mTodos.add(TodoModal.fromJson(eachTodo));
    }

    return DataModal(
      total: json['total'],
      skip: json['skip'],
      limit: json['limit'],
      todos: mTodos,
    );
  }
}
