class ProductModel {
  String id;
  String title;
  String imageUrl;
  bool isFav;
  ProductModel(
      {required this.id,
      required this.title,
      required this.imageUrl,
      this.isFav = false});
  void toggleFavorite() {
    isFav = !isFav;
  }
}
