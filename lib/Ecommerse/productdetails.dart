import 'package:flutter/material.dart';

class details extends StatefulWidget {
  final data;
  const details({super.key, this.data});

  @override
  State<details> createState() => _detailsState();
}

class _detailsState extends State<details> {
  String? color;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      endDrawer: Drawer(),
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.shop_outlined, color: Colors.black),
            Text(
              "Ecommerce ",
              style: TextStyle(color: Colors.black),
            ),
            Text(
              "Azdashir",
              style: TextStyle(color: Colors.orange),
            ),
          ],
        ),
        iconTheme: IconThemeData(
          color: Colors.grey,
        ),
        backgroundColor: Colors.grey[200],
        elevation: 0.0,
      ),
      body: ListView(
        children: [
          Container(
            width: 500,
            height: 400,
            child: Image.asset(
              widget.data["image"],
              fit: BoxFit.fill,
            ),
          ),
          Container(
            child: Text(
              widget.data["title"],
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Text(
              widget.data["subtitle"],
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 10),
            child: Text(
              widget.data["price"],
              textAlign: TextAlign.center,
              style:
                  TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Color:"),
              // SizedBox(width: 15,),
              Container(
                margin: EdgeInsets.only(left: 10),
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(60),
                  border: Border.all(color: Colors.orange),
                ),
              ),
              Text("  Grey"),
              Container(
                margin: EdgeInsets.only(left: 30),
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(60),
                ),
              ),
              Text("  Black"),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: Text(
              "Size:  33   34    35    36",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 120, vertical: 15),
            child: MaterialButton(
              padding: EdgeInsets.symmetric(vertical: 15),
              onPressed: () {},
              color: Colors.black,
              textColor: Colors.white,
              child: Text("Add to Cart"),
            ),
          )
        ],
      ),
    );
  }
}
