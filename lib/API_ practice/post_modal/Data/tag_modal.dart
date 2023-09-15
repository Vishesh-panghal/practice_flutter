
class PostModal {
  int? id;
  int? userId;
  int? reactions;
  String? title;
  String? body;
  List<String>? tag;

  PostModal({
     this.id,
     this.userId,
     this.title,
     this.body,
     this.reactions,
     this.tag,
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

// class PostModal {
//   int? id;
//   String? title;
//   String? body;
//   int? userId;
//   List<String>? tags;
//   int? reactions;
//
//   PostModal(
//       {this.id, this.title, this.body, this.userId, this.tags, this.reactions});
//
//   PostModal.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     title = json['title'];
//     body = json['body'];
//     userId = json['userId'];
//     tags = json['tags'].cast<String>();
//     reactions = json['reactions'];
//   }
// }
