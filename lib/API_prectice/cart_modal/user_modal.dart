import 'package:authentication_pages/API_prectice/cart_modal/product_modal.dart';

class UserModal {
  int id;
  int total;
  int discountedTotal;
  int userId;
  int totalProducts;
  int totalQuantity;
  List<ProductModal> products;

  UserModal({
    required this.id,
    required this.userId,
    required this.products,
    required this.totalQuantity,
    required this.totalProducts,
    required this.discountedTotal,
    required this.total,
  });

  factory UserModal.formJson(Map<String, dynamic> json) {
    List<ProductModal> mProducts = [];
    for (Map<String, dynamic> eachProduct in json['products']) {
      mProducts.add(ProductModal.fromJson(eachProduct));
    }

    return UserModal(
      id: json['id'],
      userId: json['userId'],
      products: mProducts,
      totalQuantity: json['totalQuantity'],
      totalProducts: json['totalProducts'],
      discountedTotal: json['discountedTotal'],
      total: json['total'],
    );
  }
}
