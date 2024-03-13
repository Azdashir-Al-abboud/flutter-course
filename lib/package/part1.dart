import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Packaaage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _listgenerate();
}

class _listgenerate extends State<Packaaage> {
  bool loading = true;

  List data = [];

  Future<List> getData() async {
    var response =
        await get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
    // var responseAsString = response.body; //return response as string
    List responseAsList = jsonDecode(response.body);
    // jsonDecode: return response as list of maps
    return responseAsList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Http Request"),
        ),
        body: FutureBuilder<List>(
          future: getData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            }

            if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasError) {
                return Text("Error");
              }
              if (snapshot.hasData) {
                return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: ListTile(
                        title: Text(snapshot.data![index]["title"]),
                        subtitle: Text(snapshot.data![index]["body"]),
                      ),
                    );
                  },
                );
              }
            }
            return Text("");
            // else
            //   return ListView.builder(
            //     itemCount: snapshot.data!.length,
            //     itemBuilder: (context, index) {
            //       return Card(
            //         child: ListTile(
            //           title: Text(snapshot.data![index]["title"]),
            //           subtitle: Text(snapshot.data![index]["body"]),
            //         ),
            //       );
            //     },
            //   );
          },
        ));
  }
}








/**

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Packaaage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _listgenerate();
}

class _listgenerate extends State<Packaaage> {
  bool loading = true;

  List data = [];

  getData() async {
    var response =
        await get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
    // var responseAsString = response.body; //return response as string
    var responseAsList =
        jsonDecode(response.body); // return response as list of maps
    data.addAll(responseAsList);
    loading = false;
    setState(() {});
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Http Request"),
      ),
      body: ListView(
        children: [
          if (loading) Center(child: LinearProgressIndicator()),
          ...List.generate(
            data.length,
            (index) => Card(
              elevation: 5,
              child: ListTile(
                contentPadding: EdgeInsets.all(15),
                title: Text(data[index]["title"]),
                subtitle: Text(data[index]["body"]),
                // leading: Text("ssdcmkmls"),
                // trailing: Text("mefnjskenf"),
              ),
            ),
          )
        ],
      ),
    );
  }
}


 */