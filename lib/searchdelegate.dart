import 'package:flutter/material.dart';

class SearchDeleg extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _listgenerate();
}

class _listgenerate extends State<SearchDeleg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("search delegate"),
        actions: [
          IconButton(
            onPressed: () {
              showSearch(context: context, delegate: CustomSearch());
            },
            icon: Icon(Icons.search),
          )
        ],
      ),
      body: ListView(),
    );
  }
}

class CustomSearch extends SearchDelegate {
  List username = [
    "azdashir",
    "ahmad",
    "fatter",
    "hassan",
  ];

  List? filterList; //accept null
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = "";
        },
        icon: Icon(Icons.close),
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    return Text("Result $query");
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if (query == "") {
      return ListView.builder(
        itemCount: username.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              query = username[index];
              showResults(context);
            },
            child: Card(
                child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                username[index],
                style: TextStyle(fontSize: 14),
              ),
            )),
          );
        },
      );
    } else {
      filterList =
          username.where((element) => element.contains(query)).toList();
      return ListView.builder(
        itemCount: filterList!.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              query = filterList![index];
              showResults(context);
            },
            child: Card(
                child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                filterList![index],
                style: TextStyle(fontSize: 14),
              ),
            )),
          );
        },
      );
    }
  }
}
