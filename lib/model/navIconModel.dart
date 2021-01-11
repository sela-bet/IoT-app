import 'package:flutter/material.dart';

class IconModel {
  IconData iconImage;
  String iconName;

  IconModel({this.iconName, this.iconImage});
}

List<IconModel> iconsNav = [
  IconModel(
    iconName: 'Home',
    iconImage: Icons.home,
  ),
  IconModel(
    iconName: 'Maintain',
    iconImage: Icons.computer,
  ),
  IconModel(
    iconName: 'Energy',
    iconImage: Icons.electrical_services,
  ),
  IconModel(
    iconName: 'Weather',
    iconImage: Icons.cloud,
  ),
];
