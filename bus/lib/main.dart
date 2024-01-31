import 'package:bus/newuserotp.dart';
import 'package:bus/tester.dart';
import 'package:flutter/material.dart';
import 'signin.dart';
import 'otpin.dart';
import 'applicationStart.dart';
void main() {
  runApp(Bus());
}
class Bus extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Bus Tracking",
      debugShowCheckedModeBanner: false,
      theme: ThemeData (primarySwatch: Colors.lightGreen),
    
    home: Homepage()
    );
  }
}

class Homepage extends StatelessWidget 
{
  @override
  Widget build(BuildContext context) {
    TextEditingController _value =TextEditingController();
    String phone="";
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 35, 50, 158),
        elevation: 10,
        shape:const RoundedRectangleBorder(borderRadius :BorderRadius.vertical(bottom:Radius.circular(20),),),
        shadowColor:const Color.fromARGB(255, 249, 149, 0),
        title:const Center(child:Text("School Bus",style: TextStyle(fontWeight:FontWeight.bold,color: Color.fromARGB(115, 0, 0, 0)),)),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top:100,left :10,right :10),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TextFormField(
                controller: _value,
                maxLength: 10,
                decoration:const InputDecoration(
                  border:OutlineInputBorder() ,
                  labelText: 'Enter Your Mobile Number',
                  hintText: '10 Digits Mobile Number',
                  prefixIcon:Icon(Icons.phone),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(onPressed:(){
                phone=_value.text;
                print(checkinput(phone));
                if (isAlreadyRegisterd(phone))
                {
                  Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => otpin()),
            );
                }
                else {
                  print(" Your Mobile is not reistered, Register by going back");
                }
              } , child: const Text("GET OTP")),
              const SizedBox(
                height: 100,
              ),
              ElevatedButton(onPressed:(){
                Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => signin()),
            );

              } ,child:const Text("If You are New User? Please click here"),),
              
            ],
          ),
        ),
      ),
    );
  }
}