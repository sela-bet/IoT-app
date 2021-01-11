import 'package:flutter/material.dart';
import 'package:iot_app/widget/BasicIconWidget.dart';
import '../widget/searchFieldWidget.dart';
import '../widget/energyUsage.dart';
import '../widget/navigationIcon.dart';
import '../widget/basicInformation.dart';
import '../widget/activationButtonWidget.dart';
import '../widget/energyIndicatiorWidget.dart';
import '../widget/BasicIconWidget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              color: Colors.blue,
              height: 1020,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  // =========  This is the First Container ==============
                  Container(
                    height: 430,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [Color(0xFFeede78), Color(0xFFa6c1df)])),
                    child: Stack(
                      children: [
                        // === This is our Progress Indicator Circular===========
                        //  EnergyIndicator(),
                        // === This is our Importan Icon Button===========
                        BasicIconButton()
                      ],
                    ),
                  ),

                  // ======== This is the Second Container ================
                  // == Contain 1.Navigation 2. Search bar ================
                  Positioned(
                    top: 355,
                    child: Stack(
                      children: [
                        Container(
                          height: 800,
                          width: 415,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30),
                              )),
                          child: Column(
                            children: [
                              //======= This Contain our Search Bar====
                              Container(
                                margin: EdgeInsets.only(top: 20.0, bottom: 10),
                                height: 55,
                                width: 380,
                                //color: Colors.pink,
                                child: SearchField(),
                              ),

                              //====== Container Contain the IconNavigation
                              // === User will search Through this fucking shit ===
                              Container(
                                //margin: EdgeInsets.only(top: 5),
                                height: 60,
                                //color: Colors.pink,
                                // This is the IconNavigation Widget =========
                                child: NavigationIcon(),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: 150,
                          child: Container(
                            height: 650,
                            width: 414,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.bottomCenter,
                                    end: Alignment.topCenter,
                                    colors: [
                                      Color(0xFFa6c1df),
                                      Color(0xFFeede78)
                                    ]),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30),
                                )),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // ===============================================
                                // ======== This Show The basic Info Like: =======
                                //====== Heate , Weather , and Generator =========
                                BasicInfoWidget(),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // 1. Power Consumption Text
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20),
                                      child: Text(
                                        'Power consumption',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          letterSpacing: 0.3,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    // 2. Consumption Based on room
                                    EnergyUsageWidget(),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    //3. Ativation Button
                                    ActivationButton(),
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
