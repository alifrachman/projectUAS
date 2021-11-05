import '../../../data.dart';
import '../../../format_currency.dart';
import '../../../models/product.dart';
import 'cart_item.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key, this.product}) : super(key: key);

  final Product? product;

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  List<Product> products = [];
  String total = '0';

  @override
  void initState() {
    if (widget.product != null) {
      products.add(widget.product!);
    } else {
      products = dataProducts;
    }
    super.initState();
    _getTotal();
  }

  void _getTotal() {
    int sum = 0;
    for (var element in products) {
      sum += (element.price * element.qty);
    }
    total = formatRP(sum);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Transaksi'),
      ),
      body: Column(
        children: [
          Expanded(
            child: RefreshIndicator(
              onRefresh: () async {},
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(
                  horizontal: 18,
                  vertical: 14,
                ),
                itemCount: products.length,
                itemBuilder: (BuildContext ctx, int index) {
                  return CartItem(
                    product: products[index],
                    onQtyChanged: () {
                      setState(() {
                        _getTotal();
                      });
                    },
                  );
                },
              ),
            ),
          ),
          Container(
            color: Colors.green,
            width: double.infinity,
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  'Total',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                Text(
                  total,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
