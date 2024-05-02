class ProdutoModel {
  final String title;
  final String description;
  final double  price;
  final double rating;
  final String brand;
  final String catecory;
  final String thumbnail;
  final List<String> image;

  ProdutoModel({
    required this.title,
    required this.description, 
    required this.price, 
    required this.rating, 
    required this.brand, 
    required this.catecory, 
    required this.thumbnail, 
    required this.image
  }); 

}