// import 'package:flutter/material.dart';
// import 'package:flutter_map/flutter_map.dart';
// import 'package:latlong2/latlong.dart';

// import '../widgets/responsive.dart';

// class MyMap extends StatefulWidget {
//   const MyMap({Key? key}) : super(key: key);

//   @override
//   _MyMapState createState() => _MyMapState();
// }

// class _MyMapState extends State<MyMap> {
// //API key: AIzaSyCY-Jx5_5Bi1byORHwM8YlHtaTSm7q4Lbw

//   @override
//   Widget build(BuildContext context) {
//     var screenSize = MediaQuery.of(context).size;
//     return Container(
//       height: screenSize.height *
//           (ResponsiveWidget.isSmallScreen(context) ? 0.30 : 0.50),
//       child: FlutterMap(
//         options: MapOptions(
//           zoom: 13.0,
//           center: LatLng(51.5, -0.09),
//         ),
//       ),
//       // child: FlutterMap(
//       //   options: MapOptions(
//       //     center: LatLng(51.5, -0.09),
//       //     zoom: 13.0,
//       //   ),
//       //   layers: [
//       //     TileLayerOptions(
//       //       urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
//       //       subdomains: ['a', 'b', 'c'],
//       //     ),
//       //   ],
//       // ),
//       // child: GoogleMap(
//       //   initialCameraPosition: CameraPosition(
//       //     target: LatLng(37.7749, -122.4194),
//       //     zoom: 12,
//       //   ),
//       //   markers: Set<Marker>.of([
//       //     Marker(
//       //       markerId: MarkerId('marker_1'),
//       //       position: LatLng(37.7749, -122.4194),
//       //       infoWindow: InfoWindow(title: 'San Francisco'),
//       //     ),
//       //   ]),
//       // ),
//       // child: GoogleMap(
//       //   key: Key('AIzaSyCY-Jx5_5Bi1byORHwM8YlHtaTSm7q4Lbw'),
//       //   initialCameraPosition: CameraPosition(
//       //     target: LatLng(37.7749, -122.4194),
//       //     zoom: 12,
//       //   ),
//       //   mapType: MapType.normal,
//       // ),
//       // child: GoogleMap(
//       //   myLocationEnabled: true,
//       //   myLocationButtonEnabled: true,
//       //   initialCameraPosition: CameraPosition(
//       //     target: LatLng(37.42796133580664, -122.085749655962),
//       //     zoom: 15.0,
//       //   ),
//       //   key: ValueKey('AIzaSyCY-Jx5_5Bi1byORHwM8YlHtaTSm7q4Lbw'),
//       //   onMapCreated: _onMapCreated,
//       //   markers: {
//       //     Marker(
//       //         markerId: MarkerId('uniqueIdPlease'),
//       //         position: LatLng(37.42796133580664, -122.085749655962),
//       //         infoWindow: InfoWindow(title: 'Some Location'))
//       //   },
//       // ),
//     );
//   }
// }
