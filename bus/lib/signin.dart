import 'package:bus/newuserotp.dart';
import 'package:bus/tester.dart';
import 'package:flutter/material.dart';
class signin extends StatelessWidget 
{
  @override
  Widget build(BuildContext context) {
    TextEditingController _value=TextEditingController();
    TextEditingController _value1=TextEditingController();
    String name="";
    String phone="";
    return Scaffold(
      appBar: AppBar(
        backgroundColor:const Color.fromARGB(255, 13, 94, 141),
        elevation: 10,
        shape:const RoundedRectangleBorder(borderRadius :BorderRadius.vertical(bottom:Radius.circular(20),),),
        shadowColor:const Color.fromARGB(255, 249, 149, 0),
        title:const Center(child:Text("School Bus",style: TextStyle(fontWeight:FontWeight.bold,color: Color.fromARGB(115, 0, 0, 0)),)),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top:50,left :10,right :10),
        child:Padding(
          padding: const EdgeInsets.only(top:100,bottom:10,left:10,right:10),
          child:Container(
            child:Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [TextFormField(
                  controller: _value,
                  decoration:const InputDecoration(
                    border:OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))) ,
                    labelText: 'Name',
                    hintText: 'Enter Your Name',
                    prefixIcon:Icon(Icons.man),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                controller: _value1,
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
                  name=_value.text;
                  phone=_value1.text;
                  print("Name ${emptyChecker(name)}");
                  print(checkinput(phone));
                  if (isNewUser(phone) && (name.isNotEmpty) && phone.length==10){
                    Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => newuserotp()),
            );

                  }
                } , child: const Text("Upload Details"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}