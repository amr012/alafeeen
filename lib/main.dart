import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation/Screens/page1.dart';
import 'package:splashscreen/splashscreen.dart';


void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(
            seconds: 5,
            navigateAfterSeconds: Page1(),

            //  imageBackground:AssetImage("images/car1.png") ,
            image: Image.asset(
              "images/car1.png",
              alignment: Alignment.bottomCenter,
            ),
            backgroundColor: Color(0xff2C3E50),
            title: Text(
              'Welcome',
              style: TextStyle(
                color: Colors.white,
                fontFamily: "pacifico",
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
              ),
            ),
            photoSize: 200.0,
            onClick: () => print("Flutter Egypt"),
            loaderColor: Color(0xff2C3E50)
            // ,loadingText:  new Text('Welcome ',style: TextStyle(fontSize: 60.0,fontFamily: "Source Sans Pro"),

            ));
  }
}
