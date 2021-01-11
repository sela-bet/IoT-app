import 'package:flutter/material.dart';

class ActivationModel {
  String activateName;
  String activateSub;
  IconData activeIcon;
  ActivationModel({this.activateName, this.activateSub, this.activeIcon});
}

List<ActivationModel> activateList = [
  ActivationModel(
    activateName: 'Powerwall',
    activateSub: 'Generator',
    activeIcon: Icons.electrical_services,
  ),
  ActivationModel(
    activateName: 'Industry Power',
    activateSub: 'On-Grid',
    activeIcon: Icons.electric_bike,
  ),
];
