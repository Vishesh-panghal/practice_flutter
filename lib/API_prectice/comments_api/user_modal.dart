class UserModal {
  int id;
  String username;

  UserModal({required this.id, required this.username});

  factory UserModal.fromJson(Map<String, dynamic> json) {
    return UserModal(
      id: json['id'],
      username: json['username'],
    );
  }
}
