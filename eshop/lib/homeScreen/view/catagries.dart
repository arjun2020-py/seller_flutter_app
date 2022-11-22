import 'package:flutter/material.dart';

class CatagriesPage extends StatefulWidget {
  const CatagriesPage({super.key});

  @override
  State<CatagriesPage> createState() => _CatagriesPageState();
}

class _CatagriesPageState extends State<CatagriesPage> {
  List<String> catagires = ["had bag", "jelery", "footwaer", "dener"];
  int selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: catagires.length,
        itemBuilder: (BuildContext context, int index) =>)
      ),
    );
  }

  Widget buildCatagery(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              catagires[index],
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Container(
              margin: EdgeInsets.only(top: 5),
              height: 2,
              width: 30,
              color: selectIndex == index ? Colors.black : Colors.transparent,
            )
          ],
        ),
      ),
    );
  }
}
