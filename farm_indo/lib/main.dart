import 'package:farm_indo/screens/main/cart/cart_product_detail.dart';
import 'package:farm_indo/screens/main/cart/cart_screen.dart';
import 'package:farm_indo/screens/main/home/home_screen.dart';
import 'package:farm_indo/screens/main/home/product_detail.dart';
import 'package:farm_indo/screens/main/home/product_item.dart';
import 'package:farm_indo/screens/main/main_screen.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyyApp());
}

class MyyApp extends StatelessWidget {
  const MyyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Farm Indo',
      theme: ThemeData(
        primarySwatch: Colors.green,
        textTheme: GoogleFonts.solwayTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const MainScreen(),
      routes: {
        '/cart' : (BuildContext ctx) => CartScreen(),
        '/detailbarang' : (BuildContext ctx) => MainScreen(),
      },
    );
  }
}
