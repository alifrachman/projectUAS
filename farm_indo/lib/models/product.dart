class Product {
  String imageUrl;
  String title;
  String desc;
  int price;
  int qty;

  Product({
    required this.imageUrl,
    required this.title,
    required this.desc,
    required this.price,
    this.qty = 0,
  });
}
