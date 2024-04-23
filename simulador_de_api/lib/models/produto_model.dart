class ProdutoModel {
  final String title;
  final String descrition;
  final double price;
  final double rating;
  final String brand;
  final String category;
  final String thubnail;
  final List<String> images;

  ProdutoModel({
    required this.title,
    required this.descrition, 
    required this.price, 
    required this.rating, 
    required this.brand, 
    required this.category, 
    required this.thubnail, 
    required this.images
  });

  factory ProdutoModel.fromMap(Map<String, dynamic> map) {
    return ProdutoModel(
    title: map['title'], 
    descrition: map['description'], 
    price: map['price'] * 1.0, 
    rating: map['rating'] * 1.0, 
    brand: map['brand'], 
    category: map['category'], 
    thubnail: map['thubnail'], 
    images: List<String>.from(map['images'] as List),
    );
  }
}