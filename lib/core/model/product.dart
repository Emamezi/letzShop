class Product {
  final String id;
  final String name;
  final double price;
  final String description;
  bool isFavourite;
  final String imageUrl;

  Product(
      {this.id,
      this.name,
      this.price,
      this.isFavourite = false,
      this.description,
      this.imageUrl});
}
