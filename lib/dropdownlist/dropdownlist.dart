import 'package:drop_down_list/model/selected_list_item.dart';
import 'package:flutter/material.dart';
import 'package:newflutterproject/dropdownlist/apptextfeild.dart';

class DropDownList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _listgenerate();
}

class _listgenerate extends State<DropDownList> {
  TextEditingController country = TextEditingController();
  TextEditingController age = TextEditingController();

  bool isCitySelected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Http Request"),
        ),
        body: ListView(
          children: [
            AppTextField(
              datalist: [
                SelectedListItem(name: "Syria"),
                SelectedListItem(name: "UAE"),
                SelectedListItem(name: "Oman")
              ],
              textEditingController: country,
              title: "Select Country",
              hint: "Country",
              isCitySelected: isCitySelected,
            ),
            // ================================
            AppTextField(
              datalist: [
                SelectedListItem(name: "10"),
                SelectedListItem(name: "20"),
                SelectedListItem(name: "30")
              ],
              textEditingController: age,
              title: "Select Age",
              hint: "Age",
              isCitySelected: isCitySelected,
            )
          ],
        ));
  }
}
