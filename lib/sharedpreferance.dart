import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferance extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _sharedpreferance();
}

class _sharedpreferance extends State<SharedPreferance> {
  // String? name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shared Preferance"),
      ),
      body: Column(
        children: [
          MaterialButton(
            onPressed: () async {
              // name = "ali";
              SharedPreferences sharedPreferences =
                  await SharedPreferences.getInstance();
              sharedPreferences.setString("name", "azdashir");
            },
            child: Text("Set Name"),
          ),
          MaterialButton(
            onPressed: () async {
              // print(name);
              SharedPreferences sharedPreferences =
                  await SharedPreferences.getInstance();
              String? name = sharedPreferences.getString("name");
              print(name);
            },
            child: Text("Print Name"),
          )
        ],
      ),
    );
  }
}
