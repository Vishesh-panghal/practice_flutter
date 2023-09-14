class ProductModal {
  String title;
  int id;
  int price;
  int quantity;
  int total;
  int discountedPrice;
  double discountPercentage;

  ProductModal({
    required this.id,
    required this.price,
    required this.quantity,
    required this.title,
    required this.total,
    required this.discountPercentage,
    required this.discountedPrice,
  });

  factory ProductModal.fromJson(Map<String, dynamic> json) {
    return ProductModal(
      id: json['id'],
      price: json['price'],
      quantity: json['quantity'],
      title: json['title'],
      total: json['total'],
      discountPercentage: json['discountPercentage'],
      discountedPrice: json['discountedPrice'],
    );
  }
}
