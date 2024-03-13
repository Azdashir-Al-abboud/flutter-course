import 'package:flutter/material.dart';

class Fonts extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _fonts();
}

class _fonts extends State<Fonts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Text("Fonts"),
      ),
      body: Center(
        child: Column(children: [
          Text(
            "Hello dear....",
            // style: TextStyle(fontFamily: "KodeMono"),
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ]),
      ),
    );
  }
}
