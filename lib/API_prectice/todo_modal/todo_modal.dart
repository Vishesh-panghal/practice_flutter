class TodoModal {
  int id;
  int userId;
  String todo;
  bool completed;

  TodoModal(
      {required this.id,
      required this.userId,
      required this.todo,
      required this.completed});

  factory TodoModal.fromJson(Map<String, dynamic> json) {
    return TodoModal(
      id: json['id'],
      userId: json['userId'],
      todo: json['todo'],
      completed: json['completed'],
    );
  }
}
