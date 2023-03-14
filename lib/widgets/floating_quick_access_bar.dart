import 'dart:async';

import 'package:explore/widgets/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:url_launcher/url_launcher.dart';

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
              (ResponsiveWidget.isSmallScreen(context) ? 0.35 : 0.40),
          left: ResponsiveWidget.isSmallScreen(context)
              ? widget.screenSize.width / 12
              : widget.screenSize.width / 12,
          right: ResponsiveWidget.isSmallScreen(context)
              ? widget.screenSize.width / 12
              : widget.screenSize.width / 13,
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
                                  'Facilitati',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontFamily: 'Miller Disp',
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
                                            color: Colors.grey[200],
                                            borderRadius:
                                                BorderRadius.circular(50.0),
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
                                            color: Colors.grey[200],
                                            borderRadius:
                                                BorderRadius.circular(50.0),
                                          ),
                                          child: Icon(
                                            Icons.ac_unit_rounded,
                                            size: 20,
                                            color: Color.fromARGB(
                                                255, 50, 141, 164),
                                          ),
                                        ),
                                        SizedBox(height: 5),
                                        Text(
                                          "AC",
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
                                            color: Colors.grey[200],
                                            borderRadius:
                                                BorderRadius.circular(50.0),
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
                                            color: Colors.grey[200],
                                            borderRadius:
                                                BorderRadius.circular(50.0),
                                          ),
                                          child: Icon(
                                            Icons.fastfood_rounded,
                                            size: 20,
                                            color: Color.fromARGB(
                                                255, 220, 81, 71),
                                          ),
                                        ),
                                        SizedBox(height: 5),
                                        Text(
                                          "Mancare",
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
                                        fontFamily: 'Miller Disp',
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
                                            '46 Evaluari',
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
                ],
              )
            : Card(
                elevation: 1,
                child: Padding(
                  padding: EdgeInsets.only(
                    top: widget.screenSize.height / 50,
                    bottom: widget.screenSize.height / 50,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Facilitati',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontFamily: 'Miller Disp',
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
                                      color: Colors.grey[200],
                                      borderRadius: BorderRadius.circular(50.0),
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
                                      color: Colors.grey[200],
                                      borderRadius: BorderRadius.circular(50.0),
                                    ),
                                    child: Icon(
                                      Icons.beach_access_rounded,
                                      size: 20,
                                      color: Color.fromARGB(255, 50, 141, 164),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text("Acces Plaja")
                                ],
                              ),
                              SizedBox(width: 25),
                              Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      color: Colors.grey[200],
                                      borderRadius: BorderRadius.circular(50.0),
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
                                      color: Colors.grey[200],
                                      borderRadius: BorderRadius.circular(50.0),
                                    ),
                                    child: Icon(
                                      Icons.fastfood_rounded,
                                      size: 20,
                                      color: Color.fromARGB(255, 220, 81, 71),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text("Mancare")
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                      SizedBox(width: widget.screenSize.width / 15),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Booking rating',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontFamily: 'Miller Disp',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 30),
                          InkWell(
                            onTap: () async {
                              await launchUrl(
                                Uri.parse(
                                    'https://www.booking.com/hotel/ro/green-coffee-house.en-gb.html'),
                                webOnlyWindowName: '_blank',
                              );
                            },
                            child: Card(
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
                                      '46 Evaluari',
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
                      SizedBox(width: widget.screenSize.width / 15),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Stele',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontFamily: 'Miller Disp',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 35),
                          RatingBar.builder(
                            initialRating: 3,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 3,
                            itemSize: 30.0,
                            itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                            itemBuilder: (context, _) => Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (ratingValue) {
                              setState(() {});
                            },
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
