import 'package:farm_indo/screens/auth/login_screen.dart';
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
        primarySwatch: Colors.blueGrey,
        textTheme: GoogleFonts.solwayTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: const LoginScreen(),
      debugShowCheckedModeBanner: false,
      );
    }
}
