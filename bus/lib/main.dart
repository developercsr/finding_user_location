import 'package:bus/tester.dart';
import 'package:flutter/material.dart';

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
        backgroundColor: Colors.green,
        shadowColor: Colors.orange,
        title:const Center(child:Text("School Bus",style: TextStyle(fontWeight:FontWeight.bold,color: Color.fromARGB(115, 251, 0, 255)),)),
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
              TextButton(onPressed:(){
                phone=_value.text;
                print(checkinput(phone));
              } , child: const Text("Print Button"))
            ],
          ),
        ),
      ),
    );
  }
}