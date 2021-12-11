import '../../../models/product.dart';
import 'package:flutter/material.dart';

import '../../../format_currency.dart';

class CartProductDetail extends StatefulWidget {
  const CartProductDetail({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  _CartProductDetailState createState() => _CartProductDetailState();
}

class _CartProductDetailState extends State<CartProductDetail> {
  late int qty;

  @override
  void initState() {
    qty = widget.product.qty;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final String formatedPrice = formatRP(widget.product.price);

    return Scaffold(
      backgroundColor: Colors.green[10],
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Detail Transaksi'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.all(18),
                child: SizedBox(
                  width: double.infinity,
                  height: 300,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.network(
                      widget.product.imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                )),
            const SizedBox(height: 18),
            Container(
              height: MediaQuery.of(context).size.height * 0.7,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
                color: Colors.blueGrey[100],
              ),
              padding: const EdgeInsets.all(18),
              child: Column(
                children: [
                  Text(
                    widget.product.title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Harga : $formatedPrice / Barang',
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    widget.product.desc,
                    style: const TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          height: 30,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.blueGrey),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                              ),
                            ),
                            onPressed: qty > 0
                                ? () {
                                    setState(() {
                                      qty--;
                                    });
                                  }
                                : () {},
                            child: const Icon(Icons.remove, size: 20),
                          ),
                        ),
                        Text(
                          'Qty : $qty',
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 30,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.blueGrey),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                ),
                              ),
                            ),
                            onPressed: () {
                              setState(() {
                                qty++;
                              });
                            },
                            child: const Icon(Icons.add, size: 20),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.3,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(context).pop(qty);
                      },
                      child: const Text(
                        'Submit',
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
