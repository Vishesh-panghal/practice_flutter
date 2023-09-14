import 'package:authentication_pages/API_prectice/comments_api/comment_modal.dart';

class DataModal {
  int total;
  int skip;
  int limit;
  List<CommmentModal> comments;

  DataModal(
      {required this.total,
      required this.skip,
      required this.limit,
      required this.comments});

  factory DataModal.fromJson(Map<String, dynamic> json) {
    List<CommmentModal> mComments = [];

    for (Map<String, dynamic> eachComment in json['comments']) {
      mComments.add(CommmentModal.fromJson(eachComment));
    }

    return DataModal(
      total: json['total'],
      skip: json['skip'],
      limit: json['limit'],
      comments: mComments,
    );
  }
}
