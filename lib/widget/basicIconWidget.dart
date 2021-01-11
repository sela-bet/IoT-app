import 'package:flutter/material.dart';

class BasicIconButton extends StatefulWidget {
  @override
  _BasicIconState createState() => _BasicIconState();
}

class _BasicIconState extends State<BasicIconButton> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu_sharp,
              color: Colors.white,
              size: 40,
            )),
        Column(
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.settings,
                  color: Colors.white,
                  size: 30,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notifications,
                  color: Colors.white,
                  size: 30,
                )),
          ],
        ),
      ],
    );
  }
}
