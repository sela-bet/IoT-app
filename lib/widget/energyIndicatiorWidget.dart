import 'package:flutter/material.dart';

class EnergyIndicator extends StatefulWidget {
  @override
  _EnergyIndicatorState createState() => _EnergyIndicatorState();
}

class _EnergyIndicatorState extends State<EnergyIndicator> {
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween(begin: 0.4, end: 0.9),
      duration: Duration(seconds: 20),
      builder: (context, value, _) => Stack(
        alignment: Alignment.center,
        children: [
          Text(
            '${(value * 100)} %',
            style: TextStyle(
                fontSize: 40, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 70, vertical: 40),
            //color: Colors.white,
            width: 280,
            height: 270,
            child: CircularProgressIndicator(
              value: value,
              backgroundColor: Colors.white,
              strokeWidth: 10,
            ),
          ),
        ],
      ),
    );
  }
}
