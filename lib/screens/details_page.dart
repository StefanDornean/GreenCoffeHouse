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
        padding: EdgeInsets.only(right: 20, left: 20),
        child: Column(
          children: [
            Row(
              children: [
                // Text('Despre noi'),
                // Wrap(
                //   direction: Axis.horizontal,
                //   children: [
                //     Column(
                //       crossAxisAlignment: CrossAxisAlignment.start,
                //       children: [
                //         Text('Column 1 line 1'),
                //         Text('Column 1 line 2'),
                //         Text('Column 1 line 3'),
                //         // add more Text widgets as needed
                //       ],
                //     ),
                //     Column(
                //       crossAxisAlignment: CrossAxisAlignment.start,
                //       children: [
                //         Text('Column 2 line 1'),
                //         Text('Column 2 line 2'),
                //         Text('Column 2 line 3'),
                //         // add more Text widgets as needed
                //       ],
                //     ),
                //   ],
                // ),
              ],
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
