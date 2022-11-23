import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:seller/home/view/home_screen.dart';
import 'package:seller/home/view/product_details.dart';
import 'package:seller/home/view/product_til.dart';

import 'modeltextfiled.dart';

class TrendingProduct extends StatelessWidget {
  TrendingProduct({super.key});
  CollectionReference proRef =
      FirebaseFirestore.instance.collection('Product_collection');

  final FirebaseAuth _auth = FirebaseAuth.instance;
  var ProItems;

  @override
  Widget build(BuildContext context) {
    print(_auth.currentUser!.uid);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ));
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: proRef
            .where('userid', isEqualTo: _auth.currentUser!.uid)
            .snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasData) {
            print(snapshot.data!.docs);
            final proItems = snapshot.data!.docs;
            //  print(proItems[0]['proName']);
            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 12,
                  crossAxisSpacing: 12,
                  mainAxisExtent: 300,
                  childAspectRatio: 0.75),
              itemCount: proItems.length,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>
                          ProductDeatils(product: proItems[index]),
                    ));
                  },
                  child: cardTil(proItems, index),
                );
              },
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) {
              return modelTextfield();
            },
          );
        },
      ),
    );
  }
}
