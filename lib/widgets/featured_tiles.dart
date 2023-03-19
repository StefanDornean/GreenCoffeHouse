import 'package:explore/widgets/responsive.dart';
import 'package:flutter/material.dart';

class FeaturedTiles extends StatelessWidget {
  FeaturedTiles({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  final List<String> assets = [
    'assets/images/dubla.jpg',
    'assets/images/twin.jpg',
  ];

  final List<String> title = ['Weekend', 'Zile lucratoare', 'Sarbatori'];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(width: screenSize.width / 15),
          Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              SizedBox(
                height: screenSize.height /
                    (ResponsiveWidget.isSmallScreen(context) ? 2.55 : 3.3),
                width: screenSize.width /
                    (ResponsiveWidget.isSmallScreen(context) ? 1.2 : 3),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5.0),
                  child: Card(
                    color: Colors.white,
                    child: Column(children: [
                      SizedBox(
                        height: screenSize.height /
                            (ResponsiveWidget.isSmallScreen(context) ? 4 : 5.5),
                        width: screenSize.width /
                            (ResponsiveWidget.isSmallScreen(context) ? 1.2 : 3),
                        child: Image.asset(
                          'assets/images/dubla_colaj.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(width: 5),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Camera Dubla',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Ideală pentru cupluri, mediu \nconfortabil și intim.',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'Montserrat',
                                  ),
                                ),
                                Text(
                                  '* mic dejun inclus',
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 15),
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            child: Text(
                              ' 550 lei ',
                              style: TextStyle(
                                  color: Colors.grey[200], fontSize: 16),
                            ),
                          ),
                          SizedBox(width: 5),
                        ],
                      ),
                      SizedBox(height: 5),
                    ]),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(width: screenSize.width / 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              SizedBox(
                height: screenSize.height /
                    (ResponsiveWidget.isSmallScreen(context) ? 2.55 : 3.3),
                width: screenSize.width /
                    (ResponsiveWidget.isSmallScreen(context) ? 1.2 : 3),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5.0),
                  child: Card(
                    color: Colors.white,
                    child: Column(children: [
                      SizedBox(
                        height: screenSize.height /
                            (ResponsiveWidget.isSmallScreen(context) ? 4 : 5.5),
                        width: screenSize.width /
                            (ResponsiveWidget.isSmallScreen(context) ? 1.2 : 3),
                        child: Image.asset(
                          'assets/images/twin_colaj.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(width: 5),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Camera Twin',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Perfectă pentru prieteni sau \nfamilii, două paturi separate.',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'Montserrat',
                                  ),
                                ),
                                Text(
                                  '* mic dejun inclus',
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 15),
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            child: Text(
                              ' 550 lei ',
                              style: TextStyle(
                                  color: Colors.grey[200], fontSize: 16),
                            ),
                          ),
                          SizedBox(width: 5),
                        ],
                      ),
                      SizedBox(height: 5),
                    ]),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(width: screenSize.width / 15),
        ],
      ),
    );
    // : Padding(
    //     padding: EdgeInsets.only(
    //       top: screenSize.height * 0.06,
    //       left: screenSize.width / 15,
    //       right: screenSize.width / 15,
    //     ),
    //     child: Row(
    //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //       children: [
    //         Column(
    //           children: [
    //             SizedBox(
    //               height: screenSize.width / 5,
    //               width: screenSize.width / 3.8,
    //               child: ClipRRect(
    //                 borderRadius: BorderRadius.circular(5.0),
    //                 child: Card(
    //                   color: Colors.white,
    //                   child: Column(children: [
    //                     SizedBox(
    //                       height: screenSize.width / 7,
    //                       width: screenSize.width / 3.8,
    //                       child: Image.asset(
    //                         'assets/images/dubla.jpg',
    //                         fit: BoxFit.cover,
    //                       ),
    //                     ),
    //                     Padding(
    //                       padding: EdgeInsets.only(
    //                         top: screenSize.height / 70,
    //                       ),
    //                       child: Text(
    //                         'Camera Dubla',
    //                         style: TextStyle(
    //                           fontSize: 16,
    //                           fontFamily: 'Montserrat',
    //                           fontWeight: FontWeight.w500,
    //                         ),
    //                       ),
    //                     ),
    //                   ]),
    //                 ),
    //               ),
    //             ),
    //           ],
    //         ),
    //         Column(
    //           children: [
    //             SizedBox(
    //               height: screenSize.width / 5,
    //               width: screenSize.width / 3.8,
    //               child: ClipRRect(
    //                 borderRadius: BorderRadius.circular(5.0),
    //                 child: Card(
    //                   color: Colors.white,
    //                   child: Column(children: [
    //                     SizedBox(
    //                       height: screenSize.width / 7,
    //                       width: screenSize.width / 3.8,
    //                       child: Image.asset(
    //                         'assets/images/twin.jpg',
    //                         fit: BoxFit.cover,
    //                       ),
    //                     ),
    //                     Padding(
    //                       padding: EdgeInsets.only(
    //                         top: screenSize.height / 70,
    //                       ),
    //                       child: Text(
    //                         'Camera Twin',
    //                         style: TextStyle(
    //                           fontSize: 16,
    //                           fontFamily: 'Montserrat',
    //                           fontWeight: FontWeight.w500,
    //                         ),
    //                       ),
    //                     ),
    //                   ]),
    //                 ),
    //               ),
    //             ),
    //           ],
    //         ),
    //       ],
    //     ),
    //   );
  }
}
