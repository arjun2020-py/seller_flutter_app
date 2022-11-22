import 'package:flutter/material.dart';

class DeatilsTil extends StatelessWidget {
  DeatilsTil({Key? key, required this.productData}) : super(key: key);

  var productData;

  @override
  Widget build(BuildContext context) {
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
            Text(productData['proName']),
            Text(productData['proDecrption']),
            Text(productData['proPrice']),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 50),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        Icon(Icons.update_outlined),
                        TextButton(
                            onPressed: () {}, child: const Text('Update')),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 100),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        Icon(Icons.delete_outlined),
                        TextButton(onPressed: () {}, child: Text('Delete')),
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
