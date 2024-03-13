import 'package:flutter/material.dart';

class Scroll extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _listgenerate();
}

class _listgenerate extends State<Scroll> {
  late ScrollController scrollController;

  @override
  void initState() {
    scrollController = ScrollController();
    scrollController.addListener(() {
      print("${scrollController.offset}");
    });
    super.initState();
  }

  @override
  void dispose() {
    scrollController.dispose(); //to reduce stress on the device
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scroll"),
      ),
      body: ListView(
        controller: scrollController,
        children: [
          MaterialButton(
            minWidth: 60,
            color: Colors.green,
            textColor: Colors.white,
            onPressed: () {
              // scrollController.position.moveTo(5000);
              // scrollController.jumpTo(5000);
              scrollController.animateTo(5328,
                  duration: Duration(seconds: 3), curve: Curves.ease);
            },
            child: Text("tab to meve buttom"),
          ),
          ...List.generate(
            100,
            (index) => Container(
              alignment: Alignment.center,
              child: Text(
                "$index",
                // textAlign: TextAlign.center,
              ),
              color: index.isEven ? Colors.red : Colors.blue,
              height: 60,
            ),
          ),
          MaterialButton(
            minWidth: 60,
            color: Colors.green,
            textColor: Colors.white,
            onPressed: () {
              // scrollController.position.moveTo(5000);
              // scrollController.jumpTo(5000);
              scrollController.animateTo(0,
                  duration: Duration(seconds: 3), curve: Curves.ease);
            },
            child: Text("tab to meve buttom"),
          ),
        ],
      ),
    );
  }
}
