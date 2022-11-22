// import 'package:flutter/material.dart';
// import 'package:seller/models/product_model.dart';

// import 'product_card.dart';

// class OrderScreen extends StatefulWidget {
//   const OrderScreen({super.key});

//   @override
//   State<OrderScreen> createState() => _OrderScreenState();
// }

// class _OrderScreenState extends State<OrderScreen> {
//   // List<String> catagries = [
//   //   "All Ordres",
//   //   "New Ordres",
//   //   "Processing",
//   //   "Pending",
//   //   "Canceling"
//   // ];
//   // int selectedIndex = 0;

//   List<ProductModel> product = [
//     ProductModel(
//         image:
//             "https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcTcq1afbtaU3OgdPaJKcp0FtH4eyYXCJ-msvNZgxsI3OUPR13eqHaUyPuP4b0C1W5iQghpQIbcOTw&usqp=CAc",
//         title: "Apple iPhone 14 Pro Max",
//         price: "\$139,900",
//         isOrder: true),
//     ProductModel(
//         image:
//             "https://rukminim1.flixcart.com/image/832/832/xif0q/t-shirt/w/t/2/-original-imagg26aa3gz5yym.jpeg?q=70",
//         title: "T-Shirt",
//         price: "\$1,600",
//         isOrder: false),
//     ProductModel(
//         image:
//             "https://images.meesho.com/images/products/99760635/9zthf_512.webp",
//         title: "shoe",
//         price: "\$375",
//         isOrder: true),
//     ProductModel(
//         image:
//             "https://cdn.shopify.com/s/files/1/0057/8938/4802/products/48b829ed-bee6-492e-b9bc-1824d5c63bd4_1aa0a835-9bbd-432c-ad92-76d0c2b7a36d_600x.png?v=1646390147",
//         title: "Trebel Rockerz 550",
//         price: "\$450",
//         isOrder: false),
//     ProductModel(
//         image:
//             "https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcT7sNWyusrXZmPsFvYTc780gy7RFKPLjXUydMVcmPzcCOKE51UFi9yMeuQmLjlfFvQNrQTaftNDzw&usqp=CAc",
//         title: "FASTFIT WATCH WITH LIGHT GREY DIAL",
//         price: "\$253",
//         isOrder: true),
//     ProductModel(
//         image:
//             "https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcRDyhkqeRcFUANTjcu7dtSraXHRAp-y6PwT5oMaFXsu4urMLiAnfyCDosVMK6egT3_xFiV0Kmdb&usqp=CAc",
//         title: "MALAYALI TSHIRT",
//         price: "\$200",
//         isOrder: false),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: const Text(
//               "Fruits and berries",
//               style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
//             ),
//           ),
//           const Padding(
//             padding: EdgeInsets.symmetric(horizontal: 16),
//             child: TextField(
//               decoration: InputDecoration(
//                   prefixIcon: Icon(Icons.search),
//                   border: OutlineInputBorder(),
//                   hintText: "Search"),
//             ),
//           ),
//           Expanded(
//             child: GridView.builder(
//               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 2,
//                   mainAxisSpacing: 12,
//                   crossAxisSpacing: 12,
//                   mainAxisExtent: 300,
//                   childAspectRatio: 0.05),
//               itemCount: product.length,
//               itemBuilder: (BuildContext context, int index) {
//                 return ProductCard(
//                   productmodel: product[index],
//                 );
//               },
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }










// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: SafeArea(
// //         child: ListView(
// //           children: [
// //             Padding(
// //               padding: const EdgeInsets.only(right: 340, top: 10),
// //               child: IconButton(
// //                   onPressed: () {
// //                     Navigator.of(context).pushNamed("Dashboad");
// //                   },
// //                   icon: const Icon(
// //                     Icons.arrow_back,
// //                   )),
// //             ),
// //             Padding(
// //               padding: const EdgeInsets.all(15),
// //               //1
// //               child: Card(
// //                 shape: RoundedRectangleBorder(
// //                     borderRadius: BorderRadius.circular(10)),
// //                 child: TextField(
// //                   decoration: InputDecoration(
// //                       border: const OutlineInputBorder(),
// //                       prefixIcon: IconButton(
// //                           // ignore: prefer_const_constructors
// //                           onPressed: () {},
// //                           icon: const Icon(Icons.search)),
// //                       hintText: "Search product"),
// //                 ),
// //               ),
// //             ),
// //             Expanded(
// //               child: GridView.builder(
// //                 gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
// //                     crossAxisCount: 2,
// //                     mainAxisSpacing: 12,
// //                     crossAxisSpacing: 12,
// //                     mainAxisExtent: 300,
// //                     childAspectRatio: 0.75),
// //                 itemCount: product.length,
// //                 itemBuilder: (BuildContext context, int index) {
// //                   return ProductCard(
// //                     productmodel: product[index],
// //                   );
// //                 },
// //               ),
// //             )
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }














//             // //2
//             // Padding(
//             //   padding: const EdgeInsets.symmetric(vertical: 5),
//             //   child: SizedBox(
//             //     height: 25,
//             //     child: ListView.builder(
//             //       scrollDirection: Axis.horizontal,
//             //       itemCount: catagries.length,
//             //       itemBuilder: (BuildContext context, int index) {
//             //         return GestureDetector(
//             //           onTap: () {
//             //             setState(() {
//             //               selectedIndex = index;
//             //             });
//             //           },
//             //           child: Padding(
//             //             padding: const EdgeInsets.symmetric(horizontal: 10),
//             //             child: Column(
//             //               crossAxisAlignment: CrossAxisAlignment.start,
//             //               children: [
//             //                 Text(
//             //                   catagries[index],
//             //                   style: TextStyle(
//             //                       fontWeight: FontWeight.bold,
//             //                       color: selectedIndex == index
//             //                           ? Colors.orange
//             //                           : Color(0xffACACAC)),
//             //                 ),
//             //                 Container(
//             //                   margin: const EdgeInsets.only(top: 5),
//             //                   height: 2,
//             //                   width: 30,
//             //                   color: selectedIndex == index
//             //                       ? Colors.orange
//             //                       : Colors.transparent,
//             //                 )
//             //               ],
//             //             ),
//             //           ),
//             //         );
//             //       },
//             //     ),
//             //   ),
//             // )