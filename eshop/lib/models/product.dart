import 'package:flutter/material.dart';

class Product {
  final String? image, title, descrption;
  final int? price, id;
  final Color? color;
  Product({
    this.id,
    this.image,
    this.title,
    this.descrption,
    this.price,
    this.color,
  });
}

List<Product> products = [
  Product(
      id: 1,
      image:
          "https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcQe3yeaqiscwX75rm6C3YMYzmj9bxMjN1B706PVUp1dz9LxI4gX6RTRmuUi8tCB50MY3jhvMvW8&usqp=CAc",
      title: "shoe",
      descrption: "nice fit show",
      price: 234,
      color: Colors.redAccent),
  Product(
      id: 1,
      image:
          "https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcTi5RLMLEEY4wH6peND98V3VznnoN48oppYTIGBV9VpZcISxwshQ4zXitSd6AgGl2Bfvz4Oiyg&usqp=CAE",
      title: "shoe",
      descrption: "nice fit show",
      price: 234,
      color: Colors.yellowAccent),
];
