import 'package:bus/applicationStart.dart';
import 'package:bus/tester.dart';
import 'package:flutter/material.dart';
class newuserotp extends StatelessWidget 
{
  @override
  Widget build(BuildContext context) {
    TextEditingController _value =TextEditingController();
    String otp="";
    String name1=myname();
    String name="Hello,How are you ${name1}";
    String x=phonenumber().toString();
    String phone="Your Mobile Number is ${x}";

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 13, 94, 141),
        elevation: 10,
        shape:const RoundedRectangleBorder(borderRadius :BorderRadius.vertical(bottom:Radius.circular(20),),),
        shadowColor:const Color.fromARGB(255, 249, 149, 0),
        title:const Center(child:Text("School Bus",style: TextStyle(fontWeight:FontWeight.bold,color: Color.fromARGB(115, 0, 0, 0)),)),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top:50,left :10,right :10),
        child: Padding(
          padding: const EdgeInsets.only(top:100,bottom:10,left:10,right:10),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(border:Border.all(width:1),borderRadius: BorderRadius.circular(10)),
                child:Center(child: Text(name)),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(border:Border.all(width:1),borderRadius: BorderRadius.circular(10)),
                child:Center(child: Text(phone)),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: _value,
                  maxLength: 6,
                  decoration:const InputDecoration(
                    border:OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))) ,
                    labelText: 'OTP',
                    hintText: 'OTP sent to your mobile',
                    prefixIcon:Icon(Icons.message),
                  ),
                ),
                ElevatedButton(onPressed:(){
                  otp=_value.text;
                  print(checkotp(otp));
                  if(checkotp(otp)){
                    Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => application()),
            );
                  }
                } , child: const Text("Verify OTP"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}