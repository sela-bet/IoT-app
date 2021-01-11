import 'package:flutter/material.dart';

class BasicInformation {
  String informationName;
  String informationUsage;
  IconData informationIcon;
  Color iconColor;
  BasicInformation(
      {this.informationName,
      this.iconColor,
      this.informationUsage,
      this.informationIcon});
}

List<BasicInformation> infoList = [
  BasicInformation(
      informationName: 'Heat',
      informationUsage: '25f',
      informationIcon: Icons.wb_sunny_outlined,
      iconColor: Color(0xFFeede78)),
  BasicInformation(
      informationName: 'Weather',
      informationUsage: 'Cloudy',
      informationIcon: Icons.wb_cloudy_outlined,
      iconColor: Color(0xFFa6c1df)),
  BasicInformation(
      informationName: 'Generator',
      informationUsage: '200Kwh',
      informationIcon: Icons.analytics,
      iconColor: Colors.orange),
];
