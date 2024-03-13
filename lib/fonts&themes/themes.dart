import 'package:flutter/material.dart';

class Theme extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _fonts();
}

class _fonts extends State<Theme> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fonts"),
      ),
      body: Center(
        child: Column(children: [
          Text(
            "Hello dear....",
            style: TextStyle(fontFamily: "KodeMono"),
          ),
        ]),
      ),
    );
  }
}
