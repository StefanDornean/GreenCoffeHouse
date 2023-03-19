import 'package:explore/widgets/activities.dart';
import 'package:explore/widgets/responsive.dart';
import 'package:flutter/material.dart';

import '../widgets/bottom_bar.dart';
import '../widgets/destination_heading.dart';
import '../widgets/featured_heading.dart';
import '../widgets/featured_tiles.dart';
import '../widgets/floating_quick_access_bar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();
  double _scrollPosition = 0;
  double _opacity = 0;

  _scrollListener() {
    setState(() {
      _scrollPosition = _scrollController.position.pixels;
    });
  }

  @override
  void initState() {
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    _opacity = _scrollPosition < screenSize.height * 0.40
        ? _scrollPosition / (screenSize.height * 0.40)
        : 1;

    double paddingText = ResponsiveWidget.isSmallScreen(context) ? 50 : 300;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: buildBody(),
          ),
        ],
      ),
    );
  }

  buildBody() {
    var screenSize = MediaQuery.of(context).size;
    _opacity = _scrollPosition < screenSize.height * 0.40
        ? _scrollPosition / (screenSize.height * 0.40)
        : 1;
    double paddingText = ResponsiveWidget.isSmallScreen(context) ? 50 : 300;

    return SingleChildScrollView(
        child: Column(
      children: [
        Stack(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(right: 20, left: 20),
              child: SizedBox(
                height: screenSize.height *
                    (ResponsiveWidget.isSmallScreen(context) ? 0.45 : 0.65),
                width: screenSize.width,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(13),
                  child: Image.asset(
                      ResponsiveWidget.isSmallScreen(context)
                          ? 'assets/images/bg_phone_4.jpg'
                          : 'assets/images/bg_web_3.jpg',
                      fit: BoxFit.cover),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: screenSize.height *
                    (ResponsiveWidget.isSmallScreen(context) ? 0.02 : 0.10),
                left: ResponsiveWidget.isSmallScreen(context)
                    ? screenSize.width / 1.7
                    : screenSize.width / 1.7,
                right: ResponsiveWidget.isSmallScreen(context)
                    ? screenSize.width * 0.10
                    : screenSize.width / 15,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      'Unde relaxarea întâlnește aventura',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        fontSize:
                            ResponsiveWidget.isSmallScreen(context) ? 16 : 32.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                      height:
                          ResponsiveWidget.isSmallScreen(context) ? 20 : 30),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      'Uitați de voi și acceptați invitația noastră la o ceașcă aromată de cafea, la o vorbă bună, la momente de relaxare și liniște.',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize:
                            ResponsiveWidget.isSmallScreen(context) ? 12 : 14.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            FloatingQuickAccessBar(screenSize: screenSize),
          ],
        ),
        SizedBox(height: 40),
        Column(
          children: [
            FeaturedHeading(
              screenSize: screenSize,
            ),
            FeaturedTiles(screenSize: screenSize)
          ],
        ),
        SizedBox(height: 40),
        Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Container(
                height: ResponsiveWidget.isSmallScreen(context) ? 900 : 450,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 173, 226, 174),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            Column(
              children: [
                SizedBox(height: 30),
                DestinationHeading(screenSize: screenSize),
                SizedBox(height: 15),
                Activities(),
                SizedBox(height: 30),
                BottomBar()
              ],
            ),
          ],
        ),
      ],
    ));
  }
}
