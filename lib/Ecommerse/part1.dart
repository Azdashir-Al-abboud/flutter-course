import 'package:flutter/material.dart';
import 'package:newflutterproject/Ecommerse/productdetails.dart';

class Ecommerce extends StatefulWidget {
  const Ecommerce({super.key});

  @override
  State<Ecommerce> createState() => _EcommerceState();
}

List categories = [
  {"iconName": Icons.laptop, "title": "Laptop"},
  {"iconName": Icons.phone_android, "title": "Mobile"},
  {"iconName": Icons.electric_bike, "title": "Bike"},
  {"iconName": Icons.card_giftcard_outlined, "title": "Gifts"},
  {"iconName": Icons.electric_car_outlined, "title": "Cars"},
];

List bestSelling = [
  {
    "image": "images/image2.jpg",
    "title": "camera",
    "subtitle": "description.........",
    "price": ""
  },
  {
    "image": "images/download.jpg",
    "title": "HeadPhone1",
    "subtitle": "description.........",
    "price": "230\$"
  },
  {
    "image": "images/image2.jpg",
    "title": "",
    "subtitle": "camera",
    "price": ""
  },
  {
    "image": "images/download.jpg",
    "title": "",
    "subtitle": "HeadPhone2",
    "price": ""
  },
];

class _EcommerceState extends State<Ecommerce> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* appBar: AppBar(
        title: TextFormField(
          decoration: InputDecoration(
            hintText: "Search",
            icon: Icon(Icons.search),
          ),
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.menu))],
      ), */
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 40,
        selectedItemColor: Colors.orange,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: "home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined), label: "store"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined), label: "person")
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: "Search",
                      border: InputBorder.none,
                      fillColor: Colors.grey[200],
                      filled: true,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Icon(Icons.menu, size: 40),
                ),
              ],
            ),
            // or we write Countainer(height: 30)
            Container(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Text(
                "Categories",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),

            /* *************************************************** */
            Container(
              height: 100,
              child: ListView.builder(
                itemCount: categories.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(right: 10),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Icon(
                            categories[index]["iconName"],
                            size: 40,
                          ),
                          padding: EdgeInsets.all(15),
                        ),
                        Text(
                          categories[index]["title"],
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[800]),
                        ),
                      ],
                    ),
                  );
                },
                /* 
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Icon(
                            Icons.phone_android,
                            size: 40,
                          ),
                          padding: EdgeInsets.all(15),
                        ),
                        Text(
                          "Mobile",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[800]),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Icon(
                            Icons.electric_bike,
                            size: 40,
                          ),
                          padding: EdgeInsets.all(15),
                        ),
                        Text(
                          "Bike",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[800]),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Icon(
                            Icons.card_giftcard_outlined,
                            size: 40,
                          ),
                          padding: EdgeInsets.all(15),
                        ),
                        Text(
                          "Gifts",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[800]),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Icon(
                            Icons.electric_car_outlined,
                            size: 40,
                          ),
                          padding: EdgeInsets.all(15),
                        ),
                        Text(
                          "Cars",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[800]),
                        ),
                      ],
                    ),
                  ), */
              ),
            ),
            /* *********************************************** */
            Container(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Text(
                "Best Selling",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            GridView.builder(
              itemCount: bestSelling.length,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: 230,
              ),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => details(data: bestSelling[index]),
                    ));
                  },
                  child: Card(
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          color: const Color.fromRGBO(238, 238, 238, 1),
                          width: 400,
                          // height: 120,
                          child: Image.asset(
                            bestSelling[index]["image"],
                            height: 100,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Text(
                          bestSelling[index]["title"],
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Container(
                          height: 3,
                        ),
                        Text(
                          bestSelling[index]["subtitle"],
                          style: TextStyle(color: Colors.grey[500]),
                        ),
                        Container(
                          height: 6,
                        ),
                        Text(
                          bestSelling[index]["price"],
                          style: TextStyle(color: Colors.grey[500]),
                        )
                      ],
                    ),
                  ),
                );
                /* Card(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        width: 400,
                        color: Colors.grey[200],
                        child: Image.asset(
                          "images/image2.jpg",
                          height: 100,
                          fit: BoxFit.fill,
                        ),
                      )
                    ],
                  ),
                ), */
              },
            ),
          ],
        ),
      ),
    );
  }
}
