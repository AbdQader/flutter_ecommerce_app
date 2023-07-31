class ProductModel {
  int? id;
  String? image;
  String? name;
  int? quantity;
  double? price;
  double? rating;
  String? reviews;
  String? size;
  bool? isFavorite;
  ProductModel({
    this.id,
    this.image,
    this.name,
    this.quantity,
    this.price,
    this.rating,
    this.reviews,
    this.size,
    this.isFavorite
  });
}