import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Navigat")),
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            Text(
              "Home Page",
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
                  // Navigator.of(context).push(MaterialPageRoute(
                  //   builder: (context) => AboutUs(),

                  Navigator.of(context).pushNamed("about");
                  /* ************
                    in case push we can back to first page
                    in case pushReplacement we can't back to first page
                    ************ */
                },
                color: Colors.red,
                textColor: Colors.white,
                child: Text(
                  "go to about us page",
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
// pushAndRemoveUntil    remove all previously existing pages amd move to the selected page  ( remove all avalue )

// pushNamed    add using name already define in routes
// pushReplacementNamed    replace using name already define in routes