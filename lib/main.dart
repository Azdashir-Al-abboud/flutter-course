import 'package:flutter/material.dart';
// import 'package:newflutterproject/fonts&themes/Themes.dart';
// import 'package:newflutterproject/fonts&themes/fonts.dart';
import 'package:newflutterproject/geolocator/part1.dart';
// import 'package:newflutterproject/sharedpreferance.dart';

// import 'package:newflutterproject/drawerPackage.dart';
// import 'package:newflutterproject/dropdownlist/dropdownlist.dart';
// import 'package:newflutterproject/package/part1.dart';
// import 'package:newflutterproject/Ecommerse/part1.dart';
// import 'package:newflutterproject/searchdelegate.dart';
// import 'package:newflutterproject/scroll.dart';
// import 'package:newflutterproject/aboutus.dart';
// import 'package:newflutterproject/contact.dart';
// import 'package:newflutterproject/homepage.dart';
// import 'package:newflutterproject/homepage2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppStateless();
}

class _MyAppStateless extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowCheckedModeBanner: false,
      // home: HomePage2(),
      // home: Ecommerce(),
      // home: SearchDeleg(),
      // home: Scroll(),
      // home: DropDownList(),
      // home: SharedPreferance(),
      theme: ThemeData(
        // Application coordination control center
        drawerTheme: DrawerThemeData(backgroundColor: Colors.greenAccent),
        appBarTheme: AppBarTheme(
            backgroundColor: const Color.fromARGB(255, 197, 161, 51)),
        fontFamily: "KodeMono",
        textTheme: TextTheme(
          bodySmall: TextStyle(color: Colors.red, fontSize: 14),
          bodyMedium: TextStyle(color: Colors.blue, fontSize: 18),
          bodyLarge: TextStyle(color: Colors.green, fontSize: 24),
        ),
      ),
      // home: Fonts(),
      home: GeolocatorP1(),
    );
  }
}

/* 
home: HomePage2(), 
  show dialog -  alert dialog
*/


/* home: HomePage(),
      /*
      if we need to replace  ((( push(materialPageRoute(builder: (context) => AboutUs(),))  )))
      with ((( pushNamed(name) )))
      we can do like this:
       */
      routes: {
        "home": (context) => HomePage(),
        "about": (context) => AboutUs(),
        "contact": (context) => Contact()
      }, */