import 'package:flutter/material.dart';
import 'package:newflutterproject/contact.dart';
// import 'package:newflutterproject/homepage.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Navigat")),
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            Text(
              "About us Page",
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
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Contact(),
                    /* ************
                    in case push we can back to first page
                    in case pushReplacement we can't back to first page
                    ************ */
                  ));
                },
                color: Colors.red,
                textColor: Colors.white,
                child: Text(
                  "go to Contact Page",
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
