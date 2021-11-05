import '../../../format_currency.dart';
import '../../../models/product.dart';
import 'cart_product_detail.dart';
import 'package:flutter/material.dart';

class CartItem extends StatefulWidget {
  const CartItem({Key? key, required this.product, required this.onQtyChanged})
      : super(key: key);

  final Product product;
  final Function() onQtyChanged;

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  @override
  Widget build(BuildContext context) {
    final String formatedPrice = formatRP(widget.product.price);

    return GestureDetector(
      onTap: () => onDetailTap(context),
      child: Card(
        margin: const EdgeInsets.only(bottom: 14),
        color: Colors.green[100],
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            children: [
              Container(
                color: Colors.grey[200],
                width: 120,
                height: 130,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    widget.product.imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 14),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.product.title,
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 21,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Harga : $formatedPrice',
                      style: const TextStyle(
                        fontSize: 17,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Qty : ${widget.product.qty}',
                      style: const TextStyle(
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<void> onDetailTap(BuildContext context) async {
    final dynamic results = await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => CartProductDetail(product: widget.product),
      ),
    );

    if (results != null) {
      setState(() {
        widget.product.qty = int.parse(results.toString());
        widget.onQtyChanged();
      });
    }
  }
}
