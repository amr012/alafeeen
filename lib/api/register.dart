import 'dart:convert';
import 'package:graduation/components/progress-dialog.dart';
import 'package:http/http.dart'as http;
import 'package:flutter/material.dart';
import 'package:graduation/models/registermodel.dart';

Future<String> StudentRegisterApi() async {

  Map<String,String> headers = {'Content-Type':'application/json','authorization':'Basic c3R1ZHlkb3RlOnN0dWR5ZG90ZTEyMw=='};

  var response = await http.post(
    "https://alafyn20.herokuapp.com/users/reg",
    headers: headers,
    body:jsonEncode( {

      "username": "kakaka",
      "email": "kakaaa@gmail.com",
      "phone": "010133111222",
      "password": "dddddddd",
      "address": {
        "country": "Elaaanta",
        "city": "Gharaaabia",
        "addressDet": "aaaa"
      },
      "role": "ROLE_USER",
      "active": 1,
      "card": false
    })
  );

  if (response.statusCode != 200 ||
      response.statusCode != 400 ||
      response.statusCode != 500) {

    print("ffffffffffff");
  }

  if (response.statusCode == 200) {

    // If the server did return a 200 CREATED response,
    // then parse the JSON.
    print(response.body);


    return response.body;
  } else if (response.statusCode == 400) {


    throw Exception('Failed to Submit Data444');
  } else if (response.statusCode == 500) {


    throw Exception('Failed to Submit Dataaaaa5');

  } else {print("elseeee");
print(response.statusCode);
  var data = json.decode(response.body);
  print(data['error']);

  }
}