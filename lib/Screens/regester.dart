import 'package:flutter/material.dart';
import 'package:graduation/components/dropdown.dart';
import 'package:grouped_buttons/grouped_buttons.dart';

class Regester extends StatelessWidget {
  String dropdownValue = 'One';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(

      home: Scaffold(backgroundColor: Color(0xff2C3E50),
        body: ListView(
          padding: EdgeInsets.only(left: 25, right: 25, top: 80),
          children: <Widget>[
            Image(image: AssetImage("images/car1.png"),),
            Padding(
              padding: EdgeInsets.only(top: 20, bottom: 30),
              child: Row(children: <Widget>[
                Icon(Icons.person, size: 20, color: Color(0xffFFFFFF),),
                Text(" Personal information",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                    textAlign: TextAlign.center),

              ]
              ),
            ),
            Padding(padding: EdgeInsets.only(bottom: 20),
              child: TextField(
                decoration: InputDecoration(
                    hintStyle: TextStyle(color: Colors.grey),
                    hintText: 'Name',
                    icon: Icon(Icons.lock, color: Color(0xff0984E3),
                      textDirection: TextDirection.rtl,),
                    hoverColor: Colors.white70
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(bottom: 30),
              child: TextField(
                decoration: InputDecoration(
                    hintStyle: TextStyle(color: Colors.grey),
                    hintText: 'Email',
                    icon: Icon(Icons.email, color: Color(0xff0984E3),
                      textDirection: TextDirection.rtl,),
                    hoverColor: Colors.white70
                ),
              ),
            ), Padding(padding: EdgeInsets.only(bottom: 30),
              child: TextField(
                decoration: InputDecoration(
                    hintStyle: TextStyle(color: Colors.grey),
                    hintText: 'Password',
                    icon: Icon(Icons.lock, color: Color(0xff0984E3),
                      textDirection: TextDirection.rtl,),
                    hoverColor: Colors.white70
                ),
              ),
            ), Padding(padding: EdgeInsets.only(bottom: 30),
              child: TextField(
                decoration: InputDecoration(
                    hintStyle: TextStyle(color: Colors.grey),
                    hintText: 'Confirm Password',
                    icon: Icon(Icons.lock, color: Color(0xff0984E3),
                      textDirection: TextDirection.rtl,),
                    hoverColor: Colors.white70
                ),
              ),
            )
            ,

            Row(children: <Widget>[
              Text(" Gender",
                style: TextStyle(fontSize: 20, color: Colors.white),),
              RadioButtonGroup(
                  labelStyle: TextStyle(color: Colors.grey, fontSize: 18),
                  labels: <String>[
                    "male   ",
                    "female",
                  ],
                  onSelected: (String selected) => print(selected)
              ),
            ]),

            Divider(
              color: Colors.teal.shade100,
            ),

            Padding(
              padding: EdgeInsets.only(top: 20, bottom: 30),
              child: Row(children: <Widget>[
                Icon(Icons.location_on, size: 20, color: Color(0xffFFFFFF),),
                Text(" Location information",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                    textAlign: TextAlign.center),

              ]
              ),
            ),


            Padding(

                padding: EdgeInsets.only(top: 20, bottom: 30),
                child: Card(margin: EdgeInsets.all(0),
                    shape: Border.all(color: Colors.teal.shade100),
                    color: Color(0xff2C3E50),
                    child: new Drop()
                )
            ),


            Padding(

                padding: EdgeInsets.only(top: 20, bottom: 30),
                child: Card(margin: EdgeInsets.all(0),
                    shape: Border.all(color: Colors.teal.shade100),
                    color: Color(0xff2C3E50),
                    child: new Drop())
            )
            ,

            Padding(

                padding: EdgeInsets.only(top: 20, bottom: 30),
                child: Card(margin: EdgeInsets.all(0),
                    shape: Border.all(color: Colors.teal.shade100),
                    color: Color(0xff2C3E50),
                    child: new Drop())
            )

          ],

        ),
      ),


    );
  }

  List<String> gharpya = ["City", "tanta", 'santa', 'kafr elzayat'];
  List<String> menofya = ["City", "shibin", 'santa', 'kafr elzayat'];
}
