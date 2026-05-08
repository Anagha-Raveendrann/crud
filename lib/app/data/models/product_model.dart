class ProductModel {
  final String title;
  final String image;
  final String description;
  final String price;
  final double rating;

  bool isFavorite;

  ProductModel({
    required this.title,
     required this.image,
      required this.description,
       required this.price,
        required this.rating,
        this.isFavorite = false
        }) ;
}