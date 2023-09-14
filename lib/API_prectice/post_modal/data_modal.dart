import 'package:authentication_pages/API_prectice/post_modal/tag_modal.dart';

class DataModal {
  int limit;
  int skip;
  int total;
  List<PostModal> users;

  DataModal({
    required this.limit,
    required this.skip,
    required this.total,
    required this.users,
  });

  factory DataModal.fromJson(Map<String, dynamic> json) {
    List<PostModal> mUsers = [];
    for (Map<String, dynamic> eachUsr in json['users']) {
      mUsers.add(PostModal.fromJson(eachUsr));
    }
    return DataModal(
      limit: json['limit'],
      skip: json['skip'],
      total: json['total'],
      users: mUsers,
    );
  }
}
