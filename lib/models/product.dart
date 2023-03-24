class Product{
  final List<String> urlImages;
  String header;
  double price;
  String description;
  String place;
  String path;
  Map<String, Map<String, String>> productSpec;
  Product({required this.urlImages, required this.header, required this.price, required this.description, required this.path, required this.productSpec, required this.place});
}

