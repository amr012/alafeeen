import 'package:flutter/material.dart';
import 'package:custom_bottom_navigation_bar/custom_bottom_navigation_bar_item.dart';
import 'package:custom_bottom_navigation_bar/custom_bottom_navigation_bar.dart';

import 'my_deliveres_screen.dart';
import 'my_money_screen.dart';
import 'order_screen.dart';


class HomeScreen extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<HomeScreen> {
  PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
            appBar: AppBar(
              backgroundColor: Color(0xff2C3E50),
              elevation: 0.00,
            ),
            drawer: Drawer1(),

            backgroundColor: Color(0xff2C3E50),
            body:  PageView(
              controller: _pageController,
              children: <Widget>[
                MyDelivers()
                ,
                HomeBody(),

                MyMoney()
              ],
            ),bottomNavigationBar: CustomBottomNavigationBar(
        items: [
          CustomBottomNavigationBarItem(
            icon: Icons.map,
            title: "My Delivires",
          ),
          CustomBottomNavigationBarItem(
            icon: Icons.directions_car,
            title: "Deliver Now",
          ),
          CustomBottomNavigationBarItem(
            icon: Icons.monetization_on,
            title: "My Money",
          ),
        ],

        onTap: (index) {
          _pageController.animateToPage(index,
              curve: Curves.fastLinearToSlowEaseIn,
              duration: Duration(milliseconds: 600));
        },
      ),),
    );

  }
}

class HomeBody extends StatefulWidget {
  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      print("Amr");
                    });
                  },
                  child: Container(
                    height: 130,
                    margin: EdgeInsets.only(
                        top: 30, bottom: 30, right: 30, left: 40),
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(20.0)),
                    child: Column(
                      children: <Widget>[
                        Expanded(
                            child: Image(
                                image: AssetImage("images/one.png"))),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Deliver & Recieve",
                          style: TextStyle(fontSize: 15),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                      height: 130,
                      margin: EdgeInsets.only(
                          top: 30, bottom: 30, right: 40, left: 30),
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Column(
                        children: <Widget>[
                          Expanded(
                              child: Image(
                                  image: AssetImage("images/one.png"))),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Deliver ",
                            style: TextStyle(fontSize: 15),
                          )
                        ],
                      )),
                ),
              )
            ],
          ),
          height: 300,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/town.png"),
                  fit: BoxFit.contain)),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
          child: DropDownCars(),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 30),
          child: SizedBox(height: 60,
            child: RaisedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>OrderScreen()));
            },
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
              child: Text("Order Now",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),),
          ),
        )
      ],
    );
  }
}


class Drawer1 extends StatefulWidget {
  @override
  _Drawer1State createState() => _Drawer1State();
}

class _Drawer1State extends State<Drawer1> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
          color: Color(0xff2C3E50),
          margin: EdgeInsets.only(top: 15),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: 25, bottom: 25),
                  color: Color(0xff00B398),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("images/user.png"),
                      backgroundColor: Colors.black,
                    ),
                    title: Text(
                      "Amr Elsebaey",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    subtitle: Text(
                      "gamal adb elnaser street",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(height: 40),
                FlatButton(
                  child: ListTile(
                    leading: Icon(
                      Icons.group,
                      size: 30,
                      color: Colors.white,
                    ),
                    title: Text(
                      "news",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                FlatButton(
                  child: ListTile(
                    leading: Icon(
                      Icons.group,
                      size: 30,
                      color: Colors.white,
                    ),
                    title: Text(
                      "news",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                FlatButton(
                  child: ListTile(
                    leading: Icon(
                      Icons.group,
                      size: 30,
                      color: Colors.white,
                    ),
                    title: Text(
                      "news",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                FlatButton(
                  child: ListTile(
                    leading: Icon(
                      Icons.group,
                      size: 30,
                      color: Colors.white,
                    ),
                    title: Text(
                      "news",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ]),
        ));
  }
}




class DropDownCars extends StatefulWidget {
  String c;
  @override
  State<StatefulWidget> createState() {
    return _DropState();

  }
}

class _DropState extends State<DropDownCars> {

  List<String> Cars =['Car1', 'Car2', 'Car3'];

  String dropdownValue ;
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      isExpanded: true,
      value: dropdownValue ,
      iconEnabledColor: Colors.white,
      hint: Text("Please Select The Veichle",style: TextStyle(color: Colors.white),),


      style: TextStyle(fontSize: 28,
          color: Colors.black
      ),

      onChanged: (String newValue) {
        setState(() {
          dropdownValue = newValue;
          return dropdownValue;

        });
      },
      items: Cars
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),

        );
      })
          .toList(),
    );


  }}
