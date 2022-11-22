
import 'package:cpa/HomePage/navigation.dart';
import 'package:flutter/material.dart';

import '../models/product_model.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});
  List<UserProdct> gridMap = [
    UserProdct(
        image:
            "https://www.mydesignation.com/wp-content/uploads/2019/08/malayali-tshirt-mydesignation-mockup-image-latest-golden-.jpg",
        name: "MALAYALI TSHIRT UNISEX COMFORT FIT ",
        price: "\$475",
        offer: true),
    UserProdct(
        image:
            "https://assets.ajio.com/medias/sys_master/root/20220121/n6zx/61ea59caaeb2695cdd244412/-473Wx593H-461085141-blue-MODEL5.jpg",
        name: "Crew-Neck T-shirt with Contrast Stripes",
        price: "\$360",
        offer: false),
    UserProdct(
        image:
            "https://images.bewakoof.com/t1080/keep-listening-full-sleeve-t-shirt-465228-1655749251-1.jpg",
        name: "Keep Listening Full Sleeve T-Shirt",
        price: "\$459",
        offer: true),
    UserProdct(
      image: "https://m.media-amazon.com/images/I/51zi-+aRReL._UX679_.jpg",
      name: "BLIVE Men's Striped Round Neck Half Sleeve Cotton Blend T Shirt",
      price: "\$189",
      offer: false,
    ),
    UserProdct(
      image: "https://m.media-amazon.com/images/I/51zi-+aRReL._UX679_.jpg",
      name: "BLIVE Men's Striped Round Neck Half Sleeve Cotton Blend T Shirt",
      price: "\$189",
      offer: false,
    ),
    
    UserProdct(
      image: "https://m.media-amazon.com/images/I/51zi-+aRReL._UX679_.jpg",
      name: "BLIVE Men's Striped Round Neck Half Sleeve Cotton Blend T Shirt",
      price: "\$189",
      offer: false,
    ),
    UserProdct(
      image: "https://m.media-amazon.com/images/I/51zi-+aRReL._UX679_.jpg",
      name: "BLIVE Men's Striped Round Neck Half Sleeve Cotton Blend T Shirt",
      price: "\$189",
      offer: false,
    ),
    UserProdct(
      image: "https://m.media-amazon.com/images/I/51zi-+aRReL._UX679_.jpg",
      name: "BLIVE Men's Striped Round Neck Half Sleeve Cotton Blend T Shirt",
      price: "\$189",
      offer: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 1, 
    child: 
     Scaffold(
      drawer:const UserNavigatinbar() ,
      // backgroundColor: const Color.fromARGB(159, 35, 190, 241),
      backgroundColor: const Color(0xffF43397),

      appBar: AppBar(
        

        // shape: const Border(
        //   bottom: BorderSide(color: Colors.white, width: 3),
        // ),
        backgroundColor: const Color(0xffF43397),
        leadingWidth: 110,
        leading: Row(
          children: [
            IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.arrow_back)),
            // PopupMenuButton(
            //   itemBuilder: (context) {
            //     return [
            //       PopupMenuItem(child: Text("place order")),
            //       PopupMenuItem(child: Text("Enter Receipt")),
            //       PopupMenuItem(child: Text("Sales Return")),
            //       PopupMenuItem(child: Text("Serch Bill")),
            //     ];
            //   },
            // )
            
          ],
        ),
        title: Image.asset(
          "assets/images/mesho.png",
          height: 0,

        ),
        actions: const[
           Icon(Icons.search),
           Icon(Icons.note),
        ],
       bottom:TabBar(tabs: [
        Column(
          children: const [
            CircleAvatar(
              backgroundImage: NetworkImage("https://cdn-images.cure.fit/www-curefit-com/image/upload/fl_progressive,f_auto,q_auto:eco,w_500,ar_3:4,c_fill/dpr_2/cultgear-content/Yfxf1rcYjWiHBmPU7y61aHoa"),
            ),
            Text("Male"),
          ],
        ),
        Column(
          children: const [
            CircleAvatar(
              backgroundImage: NetworkImage("https://cdn-images.cure.fit/www-curefit-com/image/upload/fl_progressive,f_auto,q_auto:eco,w_500,ar_3:4,c_fill/dpr_2/cultgear-content/hr6uD1dJCHmmghCCKNYxgT6e"),
                       
            ),
            Text("female")
          ],
        ),
        Column(
          children: const [
            CircleAvatar(
              backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcSCRIIvhWPebnJIovyTHSUyF0kbsQ2f1bVTCl7b84VCEpG6mUlt6PXJMp4-4iFCSOQb4NNc2oI'),
            ),
            Text("footware"),
          ],
        ),
        Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            
            const CircleAvatar(
                backgroundImage: NetworkImage("https://imgmedia.lbb.in/media/2018/10/5bb4d3f6fa65096b3e643ece_1538577398441.jpg"),
            ),
             // ignore: prefer_const_constructors
             Text("accessories")
          ],
        ),
       
       ]), 
        

      ),
   body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, //two row in one cloum
            crossAxisSpacing: 12.0, // space b/w cloums
            mainAxisSpacing: 12.0, // space b/w rows
            mainAxisExtent: 350 // adjest length of the row in grad
            ),
        itemCount: gridMap.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                    // set color and shape of container
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        12.0,
                      ),
                      color: Colors.grey,
                    ),
                    child: Column(
                      //set image
                      children: [
                        Image.network(
                          "${gridMap.elementAt(index).image}",
                          height: 180,
                          fit: BoxFit.cover,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                  "${gridMap.elementAt(index).name}"), //set name to the grid
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                  "${gridMap.elementAt(index).price}"), //set price
                              const SizedBox(
                                height: 8,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left:100),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.favorite,
                                    
                                    color: Colors.black,
                                    size: 15,
                                  ), //set heart icon to the container
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    )),
                //Image.network("${grad_map}"),
              ],
            ),
          );
        },
      ),   
      
    )
    );
  }
}
