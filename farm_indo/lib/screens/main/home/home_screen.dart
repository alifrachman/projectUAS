import 'package:farm_indo/models/article.dart';
import 'package:farm_indo/models/product.dart';
import 'package:farm_indo/screens/main/home/product_item.dart';

import '../../../data.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<HomeScreen> {
  final List<Article> articles = dataArticles;
  final List<Product> products = dataProducts;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Farm Indo'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 200.0,
              child: ListView.builder(
                physics: const ClampingScrollPhysics(),
                padding: const EdgeInsets.all(18),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: articles.length,
                itemBuilder: (BuildContext ctx, int index) {
                  return articleItemView(index, context);
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 18,
              ),
              child: Text(
                'Produk Terbaru',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(
              height: products.length * 180.0,
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.symmetric(
                  horizontal: 18,
                  vertical: 14,
                ),
                shrinkWrap: true,
                itemCount: products.length,
                itemBuilder: (BuildContext ctx, int index) {
                  return ProductItem(product: products[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  SizedBox articleItemView(int index, BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width - 50,
      child: Stack(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            margin: const EdgeInsets.only(right: 14),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: Colors.grey[200],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Image.network(
                articles[index].imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            width: MediaQuery.of(context).size.width - 64,
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(6),
                  bottomRight: Radius.circular(6),
                ),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black26,
                    Colors.black54,
                  ],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(14),
                child: Text(
                  articles[index].title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
