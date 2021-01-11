import 'package:flutter/material.dart';
import '../model/basicInfoModel.dart';

class BasicInfoWidget extends StatefulWidget {
  @override
  _BasicInfoWidgetState createState() => _BasicInfoWidgetState();
}

class _BasicInfoWidgetState extends State<BasicInfoWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(15, 20, 15, 10),
      child: Container(
        height: 90,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 10,
          ),
          child: Row(
            children: infoList.map((_index) {
              return Expanded(
                child: Container(
                  height: 90,
                  width: 120,
                  decoration: BoxDecoration(
                      //   color: Colors.pink,
                      ),
                  child: Center(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        _index.informationIcon,
                        size: 35,
                        color: _index.iconColor,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            _index.informationName,
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.5,
                            ),
                          ),
                          SizedBox(
                            height: 2.0,
                          ),
                          Text(
                            _index.informationUsage,
                            style: TextStyle(
                              fontSize: 11,
                              color: Colors.grey,
                              letterSpacing: 0.2,
                            ),
                          ),
                        ],
                      ),
                    ],
                  )),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
