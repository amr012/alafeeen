import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2C3E50),
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
        Container(child: Image.asset("images/carpic.png"),),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text("we are a Group that help you to transport your Furniture to any where you want in Egypt.",
            style: TextStyle(fontSize: 25, color:Colors.white),),
        ),
          Text("Our Team",style: TextStyle(fontSize: 25,color: Colors.white),),
          SizedBox(height: 10,),
          Text("Amr Mamdouh Nouh",style: TextStyle(fontSize: 25,color: Colors.white),),
          Text("Karim Maged",style: TextStyle(fontSize: 25,color: Colors.white),),
          Text("Amr Khaled Elsebaey",style: TextStyle(fontSize: 25,color: Colors.white),),
          Text("Osman Ahmed Abdelmoneam",style: TextStyle(fontSize: 25,color: Colors.white),),
          Text("Ahmed Zaid",style: TextStyle(fontSize: 25,color: Colors.white),),

      ],),
    );
  }
}
