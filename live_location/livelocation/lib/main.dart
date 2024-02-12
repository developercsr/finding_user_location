import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:livelocation/finding_user_location/doop.dart';
import 'finding_user_location/onmapliveloc.dart';
void main()
{
  WidgetsFlutterBinding.ensureInitialized();
  // Clear SharedPreferences or any other persistent storage here
  runApp(new MaterialApp(
    debugShowCheckedModeBanner:false,
    home: liveloc(),
  ));
}

class liveloc extends StatefulWidget {
  const liveloc({super.key});
  @override
  State<liveloc> createState() => _livelocState();
}

class _livelocState extends State<liveloc> {
  List<double> mylocc=[0.000,0.000];

void myLocation() async {
LocationPermission permission =await Geolocator.checkPermission();
if(permission==LocationPermission.denied || permission==LocationPermission.deniedForever){
  print("Permission Denied");
  LocationPermission ask=await Geolocator.requestPermission();
}
else{
  Position MyPlace=await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.bestForNavigation);
setState(() {
   mylocc=[MyPlace.latitude.toDouble(),MyPlace.longitude.toDouble()];
   print(mylocc);
   Navigator.of(context).push(MaterialPageRoute(builder: (context)=>onmapliveloc(mylocc),));
}
);
}
return;
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("LiveLocation",style: TextStyle(color: Color.fromARGB(255, 255, 153, 0),fontWeight: FontWeight.bold),),
        backgroundColor: Colors.purple,
        centerTitle: true,
      ),
      body: Center(child: ElevatedButton(onPressed:myLocation, child:const Text("Grab The Location"),)),
    );
  }
}