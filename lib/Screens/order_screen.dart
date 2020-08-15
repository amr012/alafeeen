import 'package:async_loader/async_loader.dart';
import 'package:flutter/material.dart';
import 'package:graduation/api/GetOrdrs.dart';
import 'package:graduation/models/orderrecive.dart';
import 'package:grouped_buttons/grouped_buttons.dart';
import 'package:flutter_holo_date_picker/flutter_holo_date_picker.dart';


class OrderScreen extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<OrderScreen> {



  int x = 0 ;
  int _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2C3E50),
      appBar:  AppBar(
        title:  Text('App'),
        backgroundColor: Color(0xff2C3E50),
        elevation: 0,
      ),
      body: Align(
        child: Theme(
          data: ThemeData(
              primaryColor: Color(0xff00B398),
              canvasColor: Color(0xff2C3E50),
              focusColor: Colors.white),
          child: new Stepper(
            type: StepperType.horizontal,
            currentStep: _currentStep,
            onStepTapped: (int step) => setState(() => _currentStep = step),
            onStepContinue: _currentStep < 2
                ? () => setState(() => _currentStep += 1)
                : null,
            onStepCancel: _currentStep > 0
                ? () => setState(() => _currentStep -= 1)
                : null,
            steps: <Step>[
              new Step(
                title: new Text(''),
                content: new Theme(
                    data: ThemeData(focusColor: Colors.white),
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            CircleAvatar(
                              radius: 35,
                              child: FlatButton(
                                onPressed: () {
                                  setState(() {
                                    x--;
                                  });
                                },
                                child: Icon(Icons.minimize),
                              ),
                            ),
                            SizedBox(width: 40,),
                            CircleAvatar(radius: 35,
                              child: FlatButton(
                                onPressed: () {
                                  setState(() {
                                    x++;
                                  });
                                },
                                child: Icon(Icons.add),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20,),

                        Text("The Number Of Cars $x",style: TextStyle(fontSize: 25,color: Colors.white),),
                        SizedBox(height: 20,),


                        RaisedButton(
                          child: Text("Choose Date",style: TextStyle(fontSize: 25),),
                          onPressed: () async {
                            var datePicked = await DatePicker.showSimpleDatePicker(
                              context,
                              initialDate: DateTime(1994),
                              firstDate: DateTime(1960),
                              lastDate: DateTime(2021),
                              dateFormat: "dd-MMMM-yyyy",
                              locale: DateTimePickerLocale.en_us,
                              looping: true,
                            );

                            final snackBar =
                            SnackBar(content: Text("Date Picked $datePicked"));
                            Scaffold.of(context).showSnackBar(snackBar);
                          },
                        ),
                        SizedBox(height: 20,),


                      ],
                    )
                ),
                isActive: _currentStep >= 0,
                state: _currentStep >= 0
                    ? StepState.complete
                    : StepState.disabled,
              ),
              new Step(
                title: new Text(''),
                content: new SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.location_on,
                            color: Colors.white,
                            size: 22,
                          ),
                          Text(
                            "  pickup location",
                            style:
                            TextStyle(fontSize: 22, color: Colors.white),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: TextField(
                          decoration: InputDecoration(
                              hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 20),
                              hintText: "pickup location",
                              hoverColor: Color(0xff2C3E50),
                              border: OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(25)))),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: TextField(
                          decoration: InputDecoration(
                              hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 20),
                              hintText: "detailed location",
                              hoverColor: Color(0xff2C3E50),
                              border: OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(25)))),
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.location_on,
                            color: Colors.white,
                            size: 22,
                          ),
                          Text(
                            "  destination location",
                            style:
                            TextStyle(fontSize: 22, color: Colors.white),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: TextField(
                          decoration: InputDecoration(
                              hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 20),
                              hintText: "destination location",
                              hoverColor: Color(0xff2C3E50),
                              border: OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(25)))),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: TextField(
                          decoration: InputDecoration(
                              hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 20),
                              hintText: "detailed location",
                              hoverColor: Color(0xff2C3E50),
                              border: OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(25)))),
                        ),
                      ),

                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.perm_identity,
                            color: Colors.white,
                            size: 22,
                          ),
                          Text(
                            "Reciver Data",
                            style:
                            TextStyle(fontSize: 22, color: Colors.white),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: TextField(
                          decoration: InputDecoration(
                              hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 20),
                              hintText: "Reciver Name",
                              hoverColor: Color(0xff2C3E50),
                              border: OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(25)))),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: TextField(
                          decoration: InputDecoration(
                              hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 20),
                              hintText: "Reciver Phone",
                              hoverColor: Color(0xff2C3E50),
                              border: OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(25)))),
                        ),
                      )

                    ],
                  ),
                ),
                isActive: _currentStep >= 0,
                state: _currentStep >= 1
                    ? StepState.complete
                    : StepState.disabled,
              ),
              new Step(
                title: new Text(''),
                content: new Column(
                  children: <Widget>[
                    Text(
                      "444 EGP",
                      style: TextStyle(
                          fontSize: 44, fontWeight: FontWeight.bold),
                    ),
                    ListTile(
                      title: RadioButtonGroup(
                        labelStyle:
                        TextStyle(fontSize: 18, color: Colors.white),
                        labels: ["cash"],
                      ),
                      trailing: Icon(Icons.monetization_on),
                    )
                  ],
                ),
                isActive: _currentStep >= 0,
                state: _currentStep >= 2
                    ? StepState.complete
                    : StepState.disabled,
              ),
            ],
          ),
        ),
      ),
    );
  }
}