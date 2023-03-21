import 'dart:async';

import 'package:explore/widgets/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import 'info_text.dart';

class FloatingQuickAccessBar extends StatefulWidget {
  const FloatingQuickAccessBar({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  _FloatingQuickAccessBarState createState() => _FloatingQuickAccessBarState();
}

class _FloatingQuickAccessBarState extends State<FloatingQuickAccessBar> {
  @override
  Widget build(BuildContext context) {
    return Center(
      heightFactor: 1,
      child: Padding(
        padding: EdgeInsets.only(
          top: widget.screenSize.height *
              (ResponsiveWidget.isSmallScreen(context) ? 0.35 : 0.55),
          left: ResponsiveWidget.isSmallScreen(context)
              ? widget.screenSize.width / 12
              : widget.screenSize.width / 15,
          right: ResponsiveWidget.isSmallScreen(context)
              ? widget.screenSize.width / 12
              : widget.screenSize.width / 16,
        ),
        child: ResponsiveWidget.isSmallScreen(context)
            ? Column(
                children: [
                  Padding(
                    padding:
                        EdgeInsets.only(top: widget.screenSize.height / 80),
                    child: Card(
                      elevation: 4,
                      child: Padding(
                        padding: EdgeInsets.only(
                            top: widget.screenSize.height / 45,
                            bottom: widget.screenSize.height / 45),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Facilități',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Row(
                                  children: [
                                    Column(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.all(5),
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Color.fromARGB(
                                                  255, 221, 221, 221),
                                              width: 3,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          child: Icon(
                                            Icons.wifi,
                                            size: 20,
                                            color: Colors.green,
                                          ),
                                        ),
                                        SizedBox(height: 5),
                                        Text(
                                          "Wi-Fi",
                                          style: TextStyle(fontSize: 12),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                        width: widget.screenSize.width / 15),
                                    Column(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.all(5),
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Color.fromARGB(
                                                  255, 221, 221, 221),
                                              width: 3,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          child: Icon(
                                            Icons.beach_access_rounded,
                                            size: 20,
                                            color: Color.fromARGB(
                                                255, 50, 141, 164),
                                          ),
                                        ),
                                        SizedBox(height: 5),
                                        Text(
                                          "Acces Plajă",
                                          style: TextStyle(fontSize: 12),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                        width: widget.screenSize.width / 15),
                                    Column(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.all(5),
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Color.fromARGB(
                                                  255, 221, 221, 221),
                                              width: 3,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          child: Icon(
                                            Icons.local_parking_rounded,
                                            size: 20,
                                            color: Color.fromARGB(
                                                255, 214, 170, 49),
                                          ),
                                        ),
                                        SizedBox(height: 5),
                                        Text(
                                          "Parcare",
                                          style: TextStyle(fontSize: 12),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                        width: widget.screenSize.width / 15),
                                    Column(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.all(5),
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Color.fromARGB(
                                                  255, 221, 221, 221),
                                              width: 3,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          child: FaIcon(
                                            FontAwesomeIcons.utensils,
                                            size: 20.0,
                                            color: Color.fromARGB(
                                                255, 220, 81, 71),
                                          ),
                                        ),
                                        SizedBox(height: 5),
                                        Text(
                                          "Mâncare",
                                          style: TextStyle(fontSize: 12),
                                        )
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: widget.screenSize.height / 80),
                    child: Card(
                      elevation: 4,
                      child: InkWell(
                        onTap: () async {
                          await launchUrl(
                            Uri.parse(
                                'https://www.booking.com/hotel/ro/green-coffee-house.en-gb.html'),
                            webOnlyWindowName: '_blank',
                          );
                        },
                        child: Padding(
                          padding: EdgeInsets.only(
                            top: widget.screenSize.height / 55,
                          ),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Booking rating',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(width: 30),
                                    Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Column(
                                        children: [
                                          Text(
                                            ' 9.2 ',
                                            style: TextStyle(
                                              fontSize: 24,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          SizedBox(height: 8),
                                          Text(
                                            '49 Evaluari',
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ]),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: widget.screenSize.height / 80),
                    child: Card(
                      elevation: 5,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              IconButton(
                                onPressed: () async {
                                  await launchUrl(
                                    Uri.parse(
                                        'https://www.facebook.com/GreenCoffeeHouseSulina/'),
                                    webOnlyWindowName: '_blank',
                                  );
                                },
                                icon: FaIcon(
                                  FontAwesomeIcons.facebook,
                                  size: 30.0,
                                  color: Colors.black,
                                ),
                              ),
                              IconButton(
                                onPressed: () async {
                                  await launchUrl(
                                    Uri.parse(
                                        'https://goo.gl/maps/jarKtKPs6XD4Yer28'),
                                    webOnlyWindowName: '_blank',
                                  );
                                },
                                icon: FaIcon(
                                  FontAwesomeIcons.mapLocationDot,
                                  size: 30.0,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 15),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              FaIcon(
                                FontAwesomeIcons.envelope,
                                size: 16.0,
                                color: Colors.black,
                              ),
                              SizedBox(width: 5),
                              Flexible(
                                child: SelectableText(
                                  'info@greencoffeehouse.ro',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 5),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              FaIcon(
                                FontAwesomeIcons.phone,
                                size: 16.0,
                                color: Colors.black,
                              ),
                              SizedBox(width: 5),
                              Flexible(
                                child: SelectableText(
                                  '+40 751 111 230',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 15),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            : Card(
                elevation: 5,
                child: Padding(
                  padding: EdgeInsets.only(
                    top: widget.screenSize.height / 50,
                    bottom: widget.screenSize.height / 50,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Facilități',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 30),
                          Row(
                            children: [
                              Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color:
                                            Color.fromARGB(255, 221, 221, 221),
                                        width: 3,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Icon(
                                      Icons.wifi,
                                      size: 20,
                                      color: Colors.green,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text("Wi-Fi")
                                ],
                              ),
                              SizedBox(width: 25),
                              Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color:
                                            Color.fromARGB(255, 221, 221, 221),
                                        width: 3,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Icon(
                                      Icons.beach_access_rounded,
                                      size: 20,
                                      color: Color.fromARGB(255, 50, 141, 164),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text("Acces Plajă")
                                ],
                              ),
                              SizedBox(width: 25),
                              Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color:
                                            Color.fromARGB(255, 221, 221, 221),
                                        width: 3,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Icon(
                                      Icons.local_parking_rounded,
                                      size: 20,
                                      color: Color.fromARGB(255, 214, 170, 49),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text("Parcare")
                                ],
                              ),
                              SizedBox(width: 25),
                              Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      //color: Colors.grey[200],
                                      border: Border.all(
                                        color:
                                            Color.fromARGB(255, 221, 221, 221),
                                        width: 3,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: FaIcon(
                                      FontAwesomeIcons.utensils,
                                      size: 20.0,
                                      color: Color.fromARGB(255, 220, 81, 71),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text("Mâncare")
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 10),
                          Text(
                            'Booking rating',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          InkWell(
                            onTap: () async {
                              await launchUrl(
                                Uri.parse(
                                    'https://www.booking.com/hotel/ro/green-coffee-house.en-gb.html'),
                                webOnlyWindowName: '_blank',
                              );
                            },
                            child: Card(
                              elevation: 5,
                              margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 16.0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Column(
                                  children: [
                                    Text(
                                      ' 9.2 ',
                                      style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                      '49 Evaluari',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Contact',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                onPressed: () async {
                                  await launchUrl(
                                    Uri.parse(
                                        'https://www.facebook.com/GreenCoffeeHouseSulina/'),
                                    webOnlyWindowName: '_blank',
                                  );
                                },
                                icon: FaIcon(
                                  FontAwesomeIcons.facebook,
                                  size: 30.0,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(width: 20),
                              IconButton(
                                onPressed: () async {
                                  await launchUrl(
                                    Uri.parse(
                                        'https://goo.gl/maps/jarKtKPs6XD4Yer28'),
                                    webOnlyWindowName: '_blank',
                                  );
                                },
                                icon: FaIcon(
                                  FontAwesomeIcons.mapLocationDot,
                                  size: 30.0,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              FaIcon(
                                FontAwesomeIcons.envelope,
                                size: 16.0,
                                color: Colors.black,
                              ),
                              SizedBox(width: 5),
                              Flexible(
                                child: SelectableText(
                                  'info@greencoffeehouse.ro',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 5),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              FaIcon(
                                FontAwesomeIcons.phone,
                                size: 16.0,
                                color: Colors.black,
                              ),
                              SizedBox(width: 5),
                              Flexible(
                                child: SelectableText(
                                  '+40 751 111 230',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
      ),
    );
  }
}
