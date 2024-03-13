

/*
import 'package:flutter/material.dart';

class HomePage3 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _listgenerate();
}

class _listgenerate extends State<HomePage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PopupMenuButton"),
        actions: [
          PopupMenuButton(
            onSelected: (value) {
              if (value == "oneval") {
                print("true");
              }
            },
            onOpened: () {},
            onCanceled: () {},
            icon: Icon(Icons.abc, color: Colors.red),
            iconSize: 25,
            color: Colors.red,
            itemBuilder: (context) => [
              PopupMenuItem(
                  child: Text("one"),
                  value: "oneval",
                  onTap: () {
                    print("one");
                  }),
              PopupMenuItem(
                  child: Text("two"),
                  value: "twoval",
                  onTap: () {
                    print("two");
                  })
            ],
          )
        ],
      ),
      body: ListView(),
    );
  }
}

*/



/**
 * initState: execute when the page is opened
 * dispose: execute when the page is closed (remove from queue)
 */


/*

import 'package:flutter/material.dart';

class HomePage3 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _listgenerate();
}

class _listgenerate extends State<HomePage3> {
  List username = [
    {"name": "az", "age": 26},
    {"name": "f", "age": 23},
    {"name": "a", "age": 30}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Generate"),
      ),
      body: ListView(
        children: [
          ...List.generate(
              // username.length,
              100, (index) {
            return Card(
              // child: ListTile(title: Text(username[index]["name"])),
              child: ListTile(
                title: Text("${index + 10000}"),
                // subtitle: Text("fdvkjn"),
              ),
            );
          })
        ],
      ),
    );
  }
}

/* difference between listView.builder and List.generate
  listView.builder: contain scroll and provide loop on widget
  List.generate provide loop on widget only
*/

*/


// --------------------------------------------------------------

/* 
** ShowBottomSheet and SnackBar **
import 'package:flutter/material.dart';

class HomePage2 extends StatefulWidget {
  const HomePage2({super.key});

  @override
  State<HomePage2> createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: Text("Show Dialog"),
      ),
      body: Center(
        child: MaterialButton(
          padding: EdgeInsets.symmetric(horizontal: 60, vertical: 15),
          color: Colors.red,
          textColor: Colors.white,
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text("Text Copied"),
              duration: Duration(milliseconds: 3000),
              action: SnackBarAction(
                  label: "ok",
                  onPressed: () {
                    print("closed");
                  }),
            ));

            /* scaffoldKey.currentState!.showBottomSheet((context) => Container(
                  height: 100,
                  width: 500,
                  color: Colors.red,
                  child: Column(
                    children: [],
                  ),
                )); */
          },
          child: Text(
            "open",
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}




 */


// ----------------------------


/* 
import 'package:flutter/material.dart';

class HomePage2 extends StatelessWidget {
  const HomePage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Show Dialog"),
      ),
      body: ListView(
        children: [
          Center(
            child: MaterialButton(
              color: Colors.red,
              textColor: Colors.white,
              onPressed: () {
                showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (context) => AlertDialog(
                    // shape: RoundedRectangleBorder(
                    //     borderRadius: BorderRadius.circular(30)),
                    title: Row(
                      children: [
                        // Icon(Icons.warning),
                        Text("warning"),
                      ],
                    ),
                    titleTextStyle: TextStyle(color: Colors.red),
                    content: Text("Are you sure?"),
                    actions: [
                      TextButton(onPressed: () {}, child: Text("Ok")),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text("cancel"))
                    ],
                  ),
                );
              },
              child: Text("showDialog"),
            ),
          )
        ],
      ),
    );
  }
}
 */



//------------------------

/*
class MyAppStateless extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("shortcut"),
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          child: ListView(
            children: [
              CustomListTile(
                name: "name",
                email: "email",
                date: "date",
                imageName: 'download.jpg',
              ),
              CustomListTile(
                name: "name",
                email: "email",
                date: "date",
                imageName: 'image2.jpg',
              ),
              CustomListTile(
                name: "name",
                email: "email",
                date: "date",
                imageName: 'download.jpg',
              ),
              CustomListTile(
                name: "name",
                email: "email",
                date: "date",
                imageName: 'image2.jpg',
              ),
              CustomListTile(
                name: "name",
                email: "email",
                date: "date",
                imageName: 'download.jpg',
              ),
              CustomListTile(
                name: "name",
                email: "email",
                date: "date",
                imageName: 'image2.jpg',
              ),
              CustomListTile(
                name: "name",
                email: "email",
                date: "date",
                imageName: 'download.jpg',
              ),
              CustomListTile(
                name: "name",
                email: "email",
                date: "date",
                imageName: 'image2.jpg',
              ),
              CustomListTile(
                name: "name",
                email: "email",
                date: "date",
                imageName: 'download.jpg',
              ),
              CustomListTile(
                name: "name",
                email: "email",
                date: "date",
                imageName: 'image2.jpg',
              ),
              CustomListTile(
                name: "name",
                email: "email",
                date: "date",
                imageName: 'download.jpg',
              ),
              CustomListTile(
                name: "name",
                email: "email",
                date: "date",
                imageName: 'image2.jpg',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
 */



// ----------------------------------

/* class _myAppStateless extends State<MyApp> with SingleTickerProviderStateMixin {
  int selectedIndex = 0;
  /*  List<Widget> listWidget = [
    Text(
      "Page1",
      style: TextStyle(fontSize: 40),
    ),
    Text(
      "Page2",
      style: TextStyle(fontSize: 40),
    ),
  ]; */
  List images = [
    "images/download.jpg",
    "images/image2.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("ButtomNavigationBar"),
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                height: 300,
                /* child: PageView(
                  // reverse: true,
                  physics: NeverScrollableScrollPhysics(),
                  onPageChanged: (value) {
                    print(value);
                  },
                  children: [
                    Image.asset(
                      "images/download.jpg",
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      "images/image2.jpg",
                      fit: BoxFit.cover,
                    ),
                    Text("data"),
                    Text("data2"),
                    Text("data2"),
                  ],
                ), */
                // -------------
                child: PageView.builder(
                  itemCount: images.length,
                  itemBuilder: (context, index) {
                    return Image.asset(
                      images[index],
                      fit: BoxFit.cover,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
 */



// ----------------------------------

/* class _myAppStateless extends State<MyApp> with SingleTickerProviderStateMixin {
  int selectedIndex = 0;
  List<Widget> listWidget = [
    Text(
      "Page1",
      style: TextStyle(fontSize: 40),
    ),
    Text(
      "Page2",
      style: TextStyle(fontSize: 40),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (value) {
            setState(() {
              selectedIndex = value;
            });
          },
          // mouseCursor: MouseCursor.defer,
          backgroundColor: Colors.redAccent,
          selectedFontSize: 14,
          unselectedFontSize: 11,
          selectedItemColor: Colors.white,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Settings",
            ),
          ],
        ),
        appBar: AppBar(
          title: Text("ButtomNavigationBar"),
        ),
        body: Container(
          child: listWidget.elementAt(selectedIndex),
        ),
      ),
    );
  }
}
 */

// ----------------------------------

/* class _myAppStateless extends State<MyApp> with SingleTickerProviderStateMixin {
  TabController? tabcontroller;
  @override
  void initState() {
    tabcontroller = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("TabBar"),
          bottom: TabBar(
            controller: tabcontroller,
            indicatorColor: Colors.red,
            labelColor: Colors.blue,
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(
                icon: Icon(Icons.laptop),
                child: Text("Laptop Page"),
              ),
              Tab(
                icon: Icon(Icons.mobile_friendly),
                child: Text("Mobile Page"),
              ),
              Tab(
                icon: Icon(Icons.car_repair),
                child: Text("Car Page"),
              ),
            ],
          ),
        ),
        body: Container(
            padding: const EdgeInsets.all(10),
            child: TabBarView(
              controller: tabcontroller,
              children: [
                Column(
                  children: [
                    Text("laptop"),
                    MaterialButton(
                      child: Text("go to mobile page"),
                      onPressed: () {
                        tabcontroller!.animateTo(1);
                      },
                    )
                  ],
                ),
                Text("mobile"),
                Text("pppp"),
              ],
            )),
      ),
    );
  }
}
 */

//--------------------------------

/* 

class _myAppStateless extends State<MyApp> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  String? username;
  String? phone;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        key: scaffoldKey,
        appBar: AppBar(title: const Text("drawer")),
        drawer: Drawer(
          child: Container(
            padding: EdgeInsets.all(15),
            child: ListView(
              children: [
                Row(
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(60),
                        child: Image.asset(
                          "images/download.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Expanded(
                        child: ListTile(
                      title: Text("Azdashir"),
                      subtitle: Text("azdashiraboud@gmail.com"),
                    ))
                  ],
                ),
                ListTile(
                  title: Text("homepage"),
                  leading: Icon(Icons.home),
                  onTap: () {},
                ),
                ListTile(
                  title: Text("account"),
                  leading: Icon(Icons.account_balance),
                  onTap: () {},
                ),
                ListTile(
                  title: Text("Order"),
                  leading: Icon(Icons.check_box),
                  onTap: () {},
                ),
                ListTile(
                  title: Text("about us"),
                  leading: Icon(Icons.help),
                  onTap: () {},
                ),
                ListTile(
                  title: Text("contact us"),
                  leading: Icon(Icons.phone_android_outlined),
                  onTap: () {},
                ),
                ListTile(
                  title: Text("signOut"),
                  leading: Icon(Icons.exit_to_app),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
        // endDrawer: Drawer(),
        body: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              /* Center(
                child: MaterialButton(
                  onPressed: () {
                    scaffoldKey.currentState!.openDrawer();
                  },
                  color: Colors.red,
                  textColor: Colors.white,
                  child:
                      const Text("Open Drawer (in case of appBar not found)"),
                ),
              ) */
            ],
          ),
        ),
      ),
    );
  }
}
 */

// -----------------------------------

/* 
appBar: AppBar(
          leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
          // elevation: 20.0,
          // shadowColor: Colors.red,
          titleTextStyle: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.red,
          ),
          title: const Text("Title"),
          // centerTitle: true,
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
            IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
            IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
          ],
        ), */

// -----------------

/* 
Form(
            key: formState,
            autovalidateMode: AutovalidateMode.always,
            child: Column(
              children: [
                TextFormField(
                  // obscureText: true,
                  // textAlign: TextAlign.center,
                  // readOnly: true,
                  /* onTap: () {
                    print("onTap");
                  }, */

                  onSaved: (newValue) {
                    username = newValue;
                  },
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("user name"),
                    labelStyle: TextStyle(color: Colors.purple),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return ("Enter any thing");
                    }
                    if (value.length > 10) {
                      return ("The entered value must be less than 10");
                    }
                  },
                ),
                const SizedBox(height: 20),
                TextFormField(
                  onSaved: (newValue) {
                    phone = newValue;
                  },
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("password"),
                    labelStyle: TextStyle(color: Colors.purple),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return ("Enter any thing");
                    }
                    if (value.length > 10) {
                      return ("The entered value must be less than 10");
                    }
                  },
                ),
                MaterialButton(
                  onPressed: () {
                    if (formState.currentState!.validate()) {
                      formState.currentState!.save();
                      print("valid");
                    } else {
                      print("un valid0");
                    }
                  },
                  color: Colors.red,
                  textColor: Colors.white,
                  child: Text("Add"),
                )
              ],
            ),
          ), */

// ------------------------------

/* body: Container(
          padding: const EdgeInsets.all(10),
          child: Stack(
            children: [
              Positioned(
                child: Container(
                  color: Colors.red,
                  width: 400,
                  height: 400,
                ),
              ),
              Container(
                color: Colors.blue,
                width: 300,
                height: 300,
              ),
              Positioned(
                right: 20,
                left: 20,
                bottom: -20,
                child: Container(
                  color: Colors.yellow,
                  width: 200,
                  height: 200,
                ),
              ),
            ],
          ),
        ), */

//---------------------------------

/* body: Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                CheckboxListTile(
                  title: Text("basketball"),
                  value: basketball,
                  onChanged: ((value) {
                    setState(() {
                      basketball = value!;
                    });
                  }),
                ),
                CheckboxListTile(
                  title: Text("football"),
                  value: football,
                  onChanged: ((value) {
                    setState(() {
                      football = value!;
                    });
                  }),
                ),
                CheckboxListTile(
                  title: Text("tennis"),
                  value: tennis,
                  onChanged: ((value) {
                    setState(() {
                      tennis = value!;
                    });
                  }),
                ),

                /* Checkbox(
                    value: status,
                    onChanged: (val) {
                      setState(() {
                        status = val!;
                      });
                    }) */
              ],
            )), */

// ------------------------------------

/* body: Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Text("Choose your country"),
                RadioListTile(
                    title: Text("syria"),
                    value: "syria",
                    groupValue: country,
                    onChanged: (val) {
                      setState(() {
                        country = val;
                      });
                    }),
                RadioListTile(
                    title: const Text("United Arab Emirates"),
                    value: "unitedArabEmirates",
                    groupValue: country,
                    onChanged: (val) {
                      setState(() {
                        country = val;
                      });
                    }),
                RadioListTile(
                    title: Text("Egypt"),
                    value: "egypt",
                    groupValue: country,
                    onChanged: (val) {
                      setState(() {
                        country = val;
                      });
                    })
              ],
            )

            // child: Radio(
            //     value: "sy",
            //     groupValue: country,
            //     onChanged: (val) {
            //       setState(() {
            //         print("object");
            //       });
            //     }),
            ),
 */
// -------------------------------------------------

/* class _myAppStateless extends State<MyApp> {
  bool status = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Title")),
        body: Container(
          padding: EdgeInsets.all(10),
          // child: Switch(
          //   //activeColor: Colors.amber,
          //   // inactiveThumbColor: Colors.red,
          //   // activeTrackColor: Colors.red,
          //   value: status,
          //   onChanged: (val) => setState(() {
          //     status = val;
          //   }),
          // ),
          child: SwitchListTile(
            title: Text('status'),
            //activeColor: Colors.amber,
            // inactiveThumbColor: Colors.red,
            // activeTrackColor: Colors.red,
            value: status,
            onChanged: (val) => setState(() {
              status = val;
            }),
          ),
        ),
      ),
    );
  }
} */

// ----------------------------------

/* class _myAppStateless extends State<MyApp> {
  int i = 41;
  bool status = true;
  String fav = "Favorited";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Title")),
        body: Container(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(width: 2),
                    ),
                    child: Row(
                      children: [
                        MaterialButton(
                          onPressed: () {
                            print("knd");
                            if (status == true) {
                              setState(() {
                                status = false;
                                i--;
                                fav = "Not favorited";
                              });
                            } else {
                              setState(() {
                                status = true;
                                i++;
                                fav = "Favorited";
                              });
                            }
                            print(status);
                          },
                          child: status == true
                              ? Icon(Icons.star)
                              : Icon(Icons.star_border),
                        ),
                        Text("$i"),
                      ],
                    ),
                  ),
                  Text("$fav"),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
} */

// ---------------------------

/* class _myAppStateless extends State<MyApp> {
  int i = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Title")),
        body: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    i++;
                  });
                },
                icon: const Icon(Icons.add),
              ),
              Text("counter $i"),
              IconButton(
                onPressed: () {
                  setState(() {
                    i--;
                  });
                },
                icon: const Icon(Icons.remove),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
 */
// ---------------

/* class _myAppStateless extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: const Text("Title")),
          body: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Container(
                  width: 500,
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(border: Border.all(width: 2)),
                  child: Text(
                    "wipe date factory reset",
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  width: 500,
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(border: Border.all(width: 2)),
                  child: Text(
                    "wipe date factory reset",
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  width: 500,
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(border: Border.all(width: 2)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text("data"),
                          Text("data"),
                          Text("data"),
                        ],
                      ),
                      Column(
                        children: [
                          Text("data"),
                          Text("data"),
                          Text("data"),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
 */
