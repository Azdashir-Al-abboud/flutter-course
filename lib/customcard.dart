import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final String name;
  final String email;
  final String date;
  final String imageName;
  const CustomListTile(
      {super.key,
      required this.name,
      required this.email,
      required this.date,
      required this.imageName});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Container(
            width: 70,
            height: 70,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(60),
              child: Image.asset(
                "images/$imageName",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: ListTile(
              title: Text(name),
              subtitle: Text(email),
              trailing: Text(date),
            ),
          ),
        ],
      ),
    );
  }
}
