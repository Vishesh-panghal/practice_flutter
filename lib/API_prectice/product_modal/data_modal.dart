import 'package:authentication_pages/API_prectice/product_modal/product_modal.dart';

class DataModal {
  int limit;
  int skip;
  int total;
  List<ProductModal> users;

  DataModal({
    required this.limit,
    required this.skip,
    required this.total,
    required this.users,
  });

  factory DataModal.fromJson(Map<String, dynamic> json) {
    List<ProductModal> mUsers = [];
    for (Map<String, dynamic> eachUsr in json['users']) {
      mUsers.add(ProductModal.fromJson(eachUsr));
    }
    return DataModal(
      limit: json['limit'],
      skip: json['skip'],
      total: json['total'],
      users: mUsers,
    );
  }
}
