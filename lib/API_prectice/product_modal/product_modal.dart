class ProductModal {
  int id;
  int price;
  int stock;
  double discountPercentage;
  double rating;
  String title;
  String description;
  String brand;
  String category;
  String thumbnail;
  List<String> images;

  ProductModal({
    required this.id,
    required this.title,
    required this.brand,
    required this.description,
    required this.category,
    required this.price,
    required this.images,
    required this.rating,
    required this.stock,
    required this.thumbnail,
    required this.discountPercentage,
  });

  factory ProductModal.fromJson(Map<String, dynamic> json) {
    return ProductModal(
      id: json['id'],
      title: json['title'],
      brand: json['brand'],
      description: json['description'],
      category: json['category'],
      price: json['price'],
      images: json['images'],
      rating: json['rating'],
      stock: json['stock'],
      thumbnail: json['thumbnail'],
      discountPercentage: json['discountPercentage'],
    );
  }
}
