import 'package:explore/widgets/responsive.dart';
import 'package:flutter/material.dart';

class FeaturedHeading extends StatelessWidget {
  const FeaturedHeading({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: ResponsiveWidget.isSmallScreen(context)
            ? screenSize.width * 0.12
            : screenSize.width / 15,
      ),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Oferte',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: ResponsiveWidget.isSmallScreen(context) ? 24 : 40,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'GreenCoffeeHouse din Delta Dunării oferă camere confortabile și spațioase, cu decor modern și facilități complete. \nCamerele noastre au vedere la piscină sau la grădina interioară, creând un cadru perfect pentru relaxare și odihnă.',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: ResponsiveWidget.isSmallScreen(context) ? 10 : 14,
                fontFamily: 'Montserrat',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
