import 'package:authentication_pages/API_prectice/quote_api/quote.dart';

class CommmentModal {
  int id;
  int postId;
  String body;
  UserModal user;

  CommmentModal({
    required this.id,
    required this.postId,
    required this.body,
    required this.user,
  });

  factory CommmentModal.fromJson(Map<String, dynamic> json) {
    return CommmentModal(
        id: json['id'],
        postId: json['postId'],
        body: json['body'],
        user: UserModal.fromJson(json['user']));
  }
}
