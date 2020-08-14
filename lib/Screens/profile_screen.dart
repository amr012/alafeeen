

import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {

  @override

  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: Color(0xff2C3E50),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

          CircleAvatar(
            backgroundImage: AssetImage("images/prof.png"),
            radius: 45,
          ),
          SizedBox(height: 15,),
          Text(
            "Amr Elsebaey",
            style: TextStyle(color: Colors.white,fontSize: 25),
          ),
          SizedBox(height: 10,),
          Divider(
            height: 10,
            indent: 70,
            endIndent: 70,
            color: Colors.white,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 10,
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  size: 30,
                  color: Colors.blue,
                ),
                title: Text(
                  "+010 25314161",
                  style: TextStyle(fontSize: 25),

                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 10,
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  size: 30,
                  color: Colors.blue,
                ),
                title: Text(
                  "Amrelsebaey@Gmail.com",
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 10,
              child: ListTile(
                leading: Icon(
                  Icons.add_location,
                  size: 30,
                  color: Colors.blue,
                ),
                title: Text(
                  "Amrelsebaey@Gmail.com",
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
