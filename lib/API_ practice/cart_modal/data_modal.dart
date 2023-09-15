import 'package:authentication_pages/API_%20practice/cart_modal/user_modal.dart';

class DataModal {
  int total;
  int skip;
  int limit;
  List<UserModal> carts;

  DataModal({
    required this.limit,
    required this.total,
    required this.skip,
    required this.carts,
  });

  factory DataModal.fromJson(Map<String, dynamic> json) {
    List<UserModal> mCarts = [];
    for (Map<String, dynamic> eachCart in json['carts']) {
      mCarts.add(UserModal.formJson(eachCart));
    }

    return DataModal(
      limit: json['limit'],
      total: json['total'],
      skip: json['skip'],
      carts: mCarts,
    );
  }
}
