import 'package:flutter/material.dart';

import '../utils/constants.dart';
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
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 10,
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
                  Text(
                    'Despre noi',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize:
                          ResponsiveWidget.isSmallScreen(context) ? 24 : 40,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    detailsText,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize:
                          ResponsiveWidget.isSmallScreen(context) ? 14 : 20,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  SizedBox(height: 50),
                  Text(
                    'Galerie foto',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize:
                          ResponsiveWidget.isSmallScreen(context) ? 24 : 40,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  AspectRatio(
                    aspectRatio: 1,
                    child: SizedBox(
                      width: double.infinity,
                      child: GridView.builder(
                        itemCount: picturesList.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount:
                                (ResponsiveWidget.isSmallScreen(context)
                                    ? 2
                                    : 4)),
                        itemBuilder: (context, index) {
                          return Card(
                              margin: EdgeInsets.all(8),
                              child: Image.asset(picturesList[index],
                                  fit: BoxFit.cover)
                              // InkWell(
                              //     //onTap: onTap,
                              //     child: Image.asset(picturesList[index],
                              //         fit: BoxFit.cover)

                              //     // Image.network(
                              //     //   picturesList[index],
                              //     //   fit: BoxFit.cover,
                              //     // ),
                              //     ),
                              );
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
