class UserModal {
  int id;
  String quote;
  String author;

  UserModal({
    required this.id,
    required this.quote,
    required this.author,
  });

  factory UserModal.fromJson(Map<String, dynamic> json) {
    return UserModal(
      id: json['id'],
      quote: json['quote'],
      author: json['author'],
    );
  }
}
