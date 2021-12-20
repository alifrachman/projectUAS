// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:farm_indo/models/product.dart';
import 'package:flutter/material.dart';

import '../../../data.dart';
import '../../../format_currency.dart';
import 'cart_item.dart';

class Checkout extends StatefulWidget {
  const Checkout({ Key? key, this.product }) : super(key: key);

  final Product? product;

  @override
  _CheckoutState createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  List<Product> products = [];
  String total = '0';

  get formatedPrice => null;

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
      backgroundColor: Colors.blueGrey[200],
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Checkout'),
        automaticallyImplyLeading: false,
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
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.6,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                  color: Colors.black45,
                  spreadRadius: 20,
                  blurRadius: 30,
                  offset: Offset(0, 10),
                  ),
                ],
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
                color: Colors.blueGrey[100],
              ),
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Text(
                    'Bayar Trankasi Melalui :',
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 18),
                  Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.network(
                    'https://1.bp.blogspot.com/-zqvCZXYnnfA/XciTU6Ikw_I/AAAAAAAABJc/TrUNMleviBsRtXgnDWzFEhZjxN03ET7_gCLcBGAsYHQ/s1600/Logo%2BOVO.png',
                      width: 100,
                      height: 40,
                    fit: BoxFit.cover,
                    ),
                ),
                  Text(
                    'OVO',
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 13,
                    ),
                  ),
                  const SizedBox(height: 13),
                  Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.network(
                    'https://logos-download.com/wp-content/uploads/2017/03/BCA_logo_Bank_Central_Asia.png',
                      width: 110,
                      height: 35,
                    fit: BoxFit.cover,
                    ),
                ),
                  Text(
                    'BCA Virtual Account',
                    style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 13),
                  Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.network(
                    'https://i.pinimg.com/originals/ef/66/ef/ef66efc2d7bafd26784e4b3edd663f6a.png',
                      width: 100,
                      height: 60,
                    fit: BoxFit.cover,
                    ),
                ),
                  Text(
                    'Cash On Delivery',
                    style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
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