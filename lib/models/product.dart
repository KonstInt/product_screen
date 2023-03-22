class Product{
  final List<String> urlImages;
  String header;
  double price;
  String description;
  ProductSpec productSpec;
  Product({required this.urlImages, required this.header, required this.price, required this.description, required this.productSpec});
}

class ProductSpec{
  String plan;
  double topHeigth;
  String repair;
  ProductSpec({ required this.plan, required this.topHeigth, required this.repair});
}