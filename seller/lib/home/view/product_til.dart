import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

Card cardTil(List<QueryDocumentSnapshot<Object?>> proItems, int index) {
  return Card(
    child: ListTile(
      title: Image.network(
        'https://rukminim1.flixcart.com/image/832/832/xif0q/t-shirt/w/t/2/-original-imagg26aa3gz5yym.jpeg?q=70',
        height: 170,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
      subtitle: Column(
        children: [
          Text(proItems[index]['proName'].toString()),
          const SizedBox(
            height: 10,
          ),
          Text(proItems[index]['proDecrption'].toString()),
          const SizedBox(
            height: 10,
          ),
          Text(proItems[index]['proPrice'].toString())
        ],
      ),
    ),
  );
}
