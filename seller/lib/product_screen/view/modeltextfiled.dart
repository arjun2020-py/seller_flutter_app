import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class modelTextfield extends StatelessWidget {
  modelTextfield({
    Key? key,
  }) : super(key: key);
  TextEditingController productnameControler = TextEditingController(),
      productDcrptionControler = TextEditingController(),
      productpriceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MediaQuery.of(context).viewInsets,
      child: Container(
        height: 300,
        color: Colors.white,
        child: Column(
          children: [
            Text(
              "Add Product Here",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: productnameControler,
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: 'Enter product title',
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: productDcrptionControler,
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: 'Enter product dicrption',
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: productpriceController,
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: 'Enter product price',
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  CreateProdcut(
                      proName: productnameControler.text,
                      proDecrption: productDcrptionControler.text,
                      proPrice: productpriceController.text);

                  Navigator.pop(context);
                },
                child: Text("Add")),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

Future<void> CreateProdcut(
    {required String proName,
    required String proDecrption,
    required String proPrice}) async {
  final proRef = FirebaseFirestore.instance.collection('Product_collection');
  final auth = FirebaseAuth.instance;
  final userId = auth.currentUser!.uid;
  var uuid = const Uuid();
  var proId = uuid.v4();

  try {
    await proRef.doc(proId).set({
      'proName': proName,
      'proDecrption': proDecrption,
      'proPrice': proPrice,
      "userid": userId,
      'proId': proId
    });
  } catch (e) {}
}
