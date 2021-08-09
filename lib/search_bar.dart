import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(10),
      width: double.infinity,
      height: 30,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.grey[100]),
    );
  }
}
