import 'package:explore/widgets/responsive.dart';
import 'package:flutter/material.dart';

class DestinationHeading extends StatelessWidget {
  const DestinationHeading({
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
        right: ResponsiveWidget.isSmallScreen(context)
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
            SizedBox(width: 20),
            Text(
              'Activități',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: ResponsiveWidget.isSmallScreen(context) ? 24 : 40,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Delta Dunării oferă o varietate de activități în aer liber, cum ar fi pescuitul, canotajul, drumețiile și observarea păsărilor. O modalitate excelentă de a explora zona și de a vă relaxa.',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: ResponsiveWidget.isSmallScreen(context) ? 14 : 20,
                fontFamily: 'Montserrat',
              ),
            ),
            SizedBox(width: 30),
          ],
        ),
      ),
    );

    // ResponsiveWidget.isSmallScreen(context)
  }
}
