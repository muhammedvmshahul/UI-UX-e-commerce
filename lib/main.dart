import 'package:flutter/material.dart';
import 'package:sports/pages/cart_page.dart';
import 'package:sports/pages/home_page.dart';
import 'package:sports/pages/product_page.dart';




void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
