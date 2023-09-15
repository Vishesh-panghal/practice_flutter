import 'package:authentication_pages/API_%20practice/post_modal/Data/tag_modal.dart';

class DataModal {
  int? limit;
  int? skip;
  int? total;
  List<PostModal>? posts;

  DataModal({
     this.limit,
     this.skip,
     this.total,
     this.posts,
  });

  factory DataModal.fromJson(Map<String, dynamic> json) {
    List<PostModal> mUsers = [];
    for (Map<String, dynamic> eachUsr in json['posts']) {
      mUsers.add(PostModal.fromJson(eachUsr));
    }
    return DataModal(
      limit: json['limit'],
      skip: json['skip'],
      total: json['total'],
      posts: mUsers,
    );
  }
}

// import 'package:authentication_pages/API_%20practice/post_modal/Data/tag_modal.dart';
//
// class DataModal {
//   List<PostModal>? posts;
//   int? total;
//   int? skip;
//   int? limit;
//
//   DataModal({this.posts, this.total, this.skip, this.limit});
//
//   DataModal.fromJson(Map<String, dynamic> json) {
//     if (json['posts'] != null) {
//       posts = <PostModal>[];
//       json['posts'].forEach((v) {
//         posts!.add(new PostModal.fromJson(v));
//       }
//       );
//     }
//     total = json['total'];
//     skip = json['skip'];
//     limit = json['limit'];
//   }

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = new Map<String, dynamic>();
  //   if (this.posts != null) {
  //     data['posts'] = this.posts!.map((v) => v.toJson()).toList();
  //   }
  //   data['total'] = this.total;
  //   data['skip'] = this.skip;
  //   data['limit'] = this.limit;
  //   return data;
  // }
// }
