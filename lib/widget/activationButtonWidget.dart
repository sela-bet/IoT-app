import 'package:flutter/material.dart';
import '../model/ativationbtnModel.dart';

class ActivationButton extends StatefulWidget {
  @override
  _ActivationButtonState createState() => _ActivationButtonState();
}

class _ActivationButtonState extends State<ActivationButton> {
  var _selectIndex;

  @override
  Widget build(BuildContext context) {
    //============================================
    // This Container hold everyting =============
    //============================================
    return Container(
      height: 90,
      //  color: Colors.yellow,
      child: Row(
        //=====This Row Contain including============
        //1. Powerwall Activation Button
        //2. Grid Activation Button
        //==========================================
        children: activateList.map((_index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                _selectIndex = _index;
              });
            },
            child: Container(
              margin: EdgeInsets.only(left: 15),
              width: 175,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(150, 10, 5, 0),
                          child: CircleAvatar(
                            radius: 4.1,
                            backgroundColor: _selectIndex == _index
                                ? Colors.red
                                : Colors.grey,
                          ),
                        ),
                        Container(
                          //color: Colors.pink,
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: CircleAvatar(
                                  radius: 16,
                                  backgroundColor: Colors.green,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.green,
                                    radius: 14,
                                    //==============================================
                                    // ======= This is Where our icon located =======
                                    //==============================================
                                    child: Icon(
                                      _index.activeIcon,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 12, top: 2.0),
                                //==============================================
                                // ======= This is Where our Text located=======
                                //==============================================
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // ===== Activate Button 1 =======
                                    Text(
                                      _index.activateName,
                                      style: TextStyle(
                                          fontSize: 10,
                                          letterSpacing: 0.3,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    // ===== Activate Button 2 =======
                                    Text(
                                      _index.activateSub,
                                      style: TextStyle(
                                          fontSize: 8, letterSpacing: 0.2),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
        //=====================================
      ),
    );
  }
}
