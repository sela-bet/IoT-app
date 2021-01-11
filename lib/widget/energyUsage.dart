import 'package:flutter/material.dart';
import '../model/usageModel.dart';

class EnergyUsageWidget extends StatefulWidget {
  @override
  _EnergyUsageWidgetState createState() => _EnergyUsageWidgetState();
}

class _EnergyUsageWidgetState extends State<EnergyUsageWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      // color: Colors.pink,
      //========= ListView Builder is here =========

      child: ListView.builder(
        itemCount: usageList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          UsageModel _usages = usageList[index];
          return Container(
            width: 170,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            margin: EdgeInsets.only(left: 15),

            //===== This Column Contain ==========
            //1. Expanded Container which hold Images
            //2. Expanded Container Contian Text

            child: Column(
              children: [
                // 1. Expanded Container first
                Expanded(
                  flex: 2,
                  child: Container(
                    // color: Colors.orange,
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Image.asset(_usages.roomImage),
                    ),
                  ),
                ),

                // 2. Expanded Container Second
                Expanded(
                  child: Container(
                    // color: Colors.green,
                    child: Column(
                      children: [
                        Text(
                          _usages.roomName,
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 13,
                            letterSpacing: 0.5,
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        //=======================================
                        // This Row contain power consumption and Lightning icon
                        //=====================================
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              _usages.roomConsumption,
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 12,
                                letterSpacing: 0.2,
                              ),
                            ),
                            Icon(
                              Icons.lightbulb,
                              color: Color(0xFFeede78),
                              size: 15,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
