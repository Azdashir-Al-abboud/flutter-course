import 'package:flutter/material.dart';
import 'package:newflutterproject/homepage.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Navigat")),
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            Text(
              "contact page",
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 50),
              // padding: EdgeInsets.symmetric(horizontal: 50),
              child: MaterialButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ));
                },
                color: Colors.red,
                textColor: Colors.white,
                child: Text(
                  "click here",
                  // style: TextStyle(
                  //   color: Colors.white,
                  // ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

// push   add
// pushReplacement   replace
// pop     remove