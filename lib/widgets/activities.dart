import 'package:carousel_slider/carousel_slider.dart';
import 'package:explore/widgets/responsive.dart';
import 'package:flutter/material.dart';

class Activities extends StatefulWidget {
  @override
  _Activities createState() => _Activities();
}

class _Activities extends State<Activities> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return ResponsiveWidget.isSmallScreen(context)
        ? Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: getActivitiesWidget(screenSize),
          )
        : Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: getActivitiesWidget(screenSize),
          );
  }

  List<Widget> getActivitiesWidget(screenSize) {
    return [
      SizedBox(width: 20),
      Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Activitati pe apa',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat',
                          fontSize:
                              ResponsiveWidget.isSmallScreen(context) ? 14 : 20,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Alaturati-va noua intr-o experienta de neuitat\n in Delta Dunarii. Va propunem sa petreceti o zi pe apa, \npescuind, facand canotaj sau inotand.',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: ResponsiveWidget.isSmallScreen(context)
                              ? 10
                              : 14.0,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ]),
              ),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: screenSize.height / 70,
                        ),
                        child: Text(
                          'Canoe',
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5.0),
                        child: SizedBox(
                          width: screenSize.width *
                              (ResponsiveWidget.isSmallScreen(context)
                                  ? 0.23
                                  : 0.11),
                          height: screenSize.height *
                              (ResponsiveWidget.isSmallScreen(context)
                                  ? 0.32
                                  : 0.65),
                          child: Image.asset(
                            'assets/images/canoe.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 20),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(height: 60),
                      Padding(
                        padding: EdgeInsets.only(
                          top: screenSize.height / 70,
                        ),
                        child: Text(
                          'Pescuit',
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5.0),
                        child: SizedBox(
                          width: screenSize.width *
                              (ResponsiveWidget.isSmallScreen(context)
                                  ? 0.23
                                  : 0.11),
                          height: screenSize.height *
                              (ResponsiveWidget.isSmallScreen(context)
                                  ? 0.32
                                  : 0.65),
                          child: Image.asset(
                            'assets/images/pescuit.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 20),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(height: 30),
                      Padding(
                        padding: EdgeInsets.only(
                          top: screenSize.height / 70,
                        ),
                        child: Text(
                          'Inot',
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5.0),
                        child: SizedBox(
                          width: screenSize.width *
                              (ResponsiveWidget.isSmallScreen(context)
                                  ? 0.23
                                  : 0.11),
                          height: screenSize.height *
                              (ResponsiveWidget.isSmallScreen(context)
                                  ? 0.32
                                  : 0.65),
                          child: Image.asset(
                            'assets/images/inot.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          )
        ],
      ),
      SizedBox(height: 55),
      Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(width: 20),
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Activitati pe uscat',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        fontSize:
                            ResponsiveWidget.isSmallScreen(context) ? 14 : 20,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Daca preferati sa petreceti mai mult timp pe uscat, \nva invitam sa explorati imprejurimile calarind. \nDe asemenea, va puteti relaxa la resortul nostru \nsavurand preparate delicioase la restaurant.',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize:
                            ResponsiveWidget.isSmallScreen(context) ? 10 : 14.0,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5),
              Row(
                //mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: screenSize.height / 70,
                        ),
                        child: Text(
                          'Plaja',
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5.0),
                        child: SizedBox(
                          width: screenSize.width *
                              (ResponsiveWidget.isSmallScreen(context)
                                  ? 0.23
                                  : 0.11),
                          height: screenSize.height *
                              (ResponsiveWidget.isSmallScreen(context)
                                  ? 0.32
                                  : 0.65),
                          child: Image.asset(
                            'assets/images/plaja.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 20),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: 60),
                      Padding(
                        padding: EdgeInsets.only(
                          top: screenSize.height / 70,
                        ),
                        child: Text(
                          'Calarit',
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5.0),
                        child: SizedBox(
                          width: screenSize.width *
                              (ResponsiveWidget.isSmallScreen(context)
                                  ? 0.23
                                  : 0.11),
                          height: screenSize.height *
                              (ResponsiveWidget.isSmallScreen(context)
                                  ? 0.32
                                  : 0.65),
                          child: Image.asset(
                            'assets/images/calarit.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 20),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: 30),
                      Padding(
                        padding: EdgeInsets.only(
                          top: screenSize.height / 70,
                        ),
                        child: Text(
                          'Cafea',
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5.0),
                        child: SizedBox(
                          width: screenSize.width *
                              (ResponsiveWidget.isSmallScreen(context)
                                  ? 0.23
                                  : 0.11),
                          height: screenSize.height *
                              (ResponsiveWidget.isSmallScreen(context)
                                  ? 0.32
                                  : 0.65),
                          child: Image.asset(
                            'assets/images/cafea.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
          SizedBox(width: 20),
        ],
      ),
      SizedBox(height: 20),
    ];
  }
}
