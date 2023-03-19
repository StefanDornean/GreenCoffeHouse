import 'package:flutter/material.dart';

import '../widgets/responsive.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Padding(
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
          children: [
            Row(
              children: [
                Column()
              ],
            ),
            SizedBox(height: 20),
            
          ],
        ),
      ),
    );
  }
}
