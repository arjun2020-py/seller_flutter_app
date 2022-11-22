import 'package:eshop/homeScreen/view/catagries.dart';
import 'package:eshop/models/product.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CatagriesPage(),
          Container(
            height: 180,
            width: 160,
            decoration: BoxDecoration(
                color: products[0].color,
                borderRadius: BorderRadius.circular(16)),
          ),
        ],
      ),
    );
  }
}
