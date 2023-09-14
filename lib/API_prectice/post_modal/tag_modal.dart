
class PostModal {
  int id;
  int userId;
  int reactions;
  String title;
  String body;
  List<String> tag;

  PostModal({
    required this.id,
    required this.userId,
    required this.title,
    required this.body,
    required this.reactions,
    required this.tag,
  });

  factory PostModal.fromJson(Map<String, dynamic> json) {
    return PostModal(
      id: json['id'],
      userId: json['userId'],
      title: json['title'],
      body: json['body'],
      reactions: json['reactions'],
      tag: json['tag'],
    );
  }
}
