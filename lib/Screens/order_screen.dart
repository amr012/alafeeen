import 'package:flutter/material.dart';
import 'package:grouped_buttons/grouped_buttons.dart';


class OrderScreen extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<OrderScreen> {
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
                    child: Column(
                      children: <Widget>[
                        Text(
                          "please choses ay kalam f ay kalam sfsf sfedfdf drfhdh dhdhd dhdhd",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        CheckboxGroup(
                          labels: ["asas", "asasa", "sdsdsd", "aDASDASD"],
                          labelStyle: TextStyle(color: Colors.white),
                        )
                      ],
                    )),
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