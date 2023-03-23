class Product{
  final List<String> urlImages;
  String header;
  double price;
  String description;
  Map<String, Map<String, String>> productSpec;
  Product({required this.urlImages, required this.header, required this.price, required this.description, required this.productSpec});
}

