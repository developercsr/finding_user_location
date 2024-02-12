import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
class onmapliveloc extends StatelessWidget {
  final List<double> mylocation1;
  onmapliveloc(this.mylocation1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar:AppBar(
  title:const  Text("My Location"),
    ),
     body:GoogleMap(
      initialCameraPosition:CameraPosition(
        target: LatLng(mylocation1[0],mylocation1[1]),
        zoom: 55),
        markers: {
           Marker(markerId:MarkerId("My Location"),
          position:LatLng(mylocation1[0],mylocation1[1]),
          anchor:const Offset(0.5,0.5)
           ),
        },
    ),
    );
  }
}