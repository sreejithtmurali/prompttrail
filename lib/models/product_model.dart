
class ProductModel {
  final int id;
  final String title;
  final String thumbnail;
  final double price;
  final double rating;

  ProductModel({
    required this.id,
    required this.title,
    required this.thumbnail,
    required this.price,
    required this.rating,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'],
      title: json['title'] ?? '',
      thumbnail: json['thumbnail'] ?? '',
      price: (json['price'] as num).toDouble(),
      rating: (json['rating'] as num).toDouble(),
    );
  }
}
