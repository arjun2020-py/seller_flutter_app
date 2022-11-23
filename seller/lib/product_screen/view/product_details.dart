import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:seller/home/view/product_screen.dart';

import 'details_tail.dart';

class ProductDeatils extends StatefulWidget {
  ProductDeatils({super.key, required this.product});
  var product; //refer the object

  @override
  State<ProductDeatils> createState() => _ProductDeatilsState();
}

class _ProductDeatilsState extends State<ProductDeatils> {
  final FirebaseAuth _auth1 = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    print(widget.product);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, 'productHome');
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              )),
        ),
        body: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                DeatilsTil(productData: widget.product),
              ],
            )
          ],
        ));
  }
}
