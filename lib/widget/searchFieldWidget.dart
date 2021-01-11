import 'package:flutter/material.dart';

class SearchField extends StatefulWidget {
  @override
  _SearchFieldState createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(color: Colors.red)),
        suffix: Icon(
          Icons.search,
          color: Colors.blue,
        ),
        hintText: 'Search here...',
        hintStyle: TextStyle(
          color: Colors.blue,
        ),
      ),
    );
  }
}
