import 'package:flutter/material.dart';

class MyDelivers extends StatefulWidget {
  @override
  _MyDeliversState createState() => _MyDeliversState();
}

class _MyDeliversState extends State<MyDelivers> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3,
      child: Scaffold(backgroundColor: Color(0xff2C3E50),
        appBar: AppBar(automaticallyImplyLeading: false,title: Text("3alafen",style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 30.0,
        ),),centerTitle: true,
          backgroundColor: Color(0xff2C3E50),
          bottom: TabBar(tabs: <Widget>[
            Tab(child: Column(children: <Widget>[
              Text("Recent",style: TextStyle(fontSize: 16),),
              Text("Delivires",style: TextStyle(fontSize: 16)),
            ],),),
            Tab(child: Column(children: <Widget>[
              Text("Waited",style: TextStyle(fontSize: 16)),
              Text("Delivires",style: TextStyle(fontSize: 16)),
            ],
              
            ),),
            Tab(child: Column(children: <Widget>[
              Text("All",style: TextStyle(fontSize: 16)),
              Text("Delivires",style: TextStyle(fontSize: 16)),
            ],),),

          ]),
        ),body: TabBarView(children: <Widget>[
          Page1(),
          Page2(),
          Page3(),
        ]),
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
      Container(child: Image.asset("images/box.png"),),
      SizedBox(height: 15,),
      Text("There is No Delivires",style: TextStyle(color: Colors.white,fontSize: 20),)
    ],);
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(child: Image.asset("images/box.png"),),
        SizedBox(height: 15,),
        Text("There is No Delivires",style: TextStyle(color: Colors.white,fontSize: 20),)
      ],);
  }
}

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(child: Image.asset("images/box.png"),),
        SizedBox(height: 15,),
        Text("There is No Delivires",style: TextStyle(color: Colors.white,fontSize: 20),)
      ],);
  }
}