import 'package:flutter/material.dart';
import '../model/navIconModel.dart';

class NavigationIcon extends StatefulWidget {
  @override
  _NavigationIconState createState() => _NavigationIconState();
}

class _NavigationIconState extends State<NavigationIcon> {
  int _selectIcon = 0;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: iconsNav.length,
      itemBuilder: (context, index) {
        IconModel _icon = iconsNav[index];
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              setState(() {
                _selectIcon = index;
              });
            },
            child: Container(
              width: 115,
              decoration: BoxDecoration(
                  color: _selectIcon == index
                      ? Color(0xFFeede78)
                      : Color(0xFFafbfb2),
                  borderRadius: BorderRadius.circular(50)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    _icon.iconImage,
                    color: Colors.white,
                    size: 25,
                  ),
                  Text(
                    _icon.iconName,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
