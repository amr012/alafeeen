import 'dart:core';

import 'package:shared_preferences/shared_preferences.dart';

class Common  {
  static final String name = "name";
  static final String email = "email";
  static final String phone = "phone";
  static final String addressDet = "addressDet";

static String username ;
  static getusername() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    String name =  _prefs.getString(Common.name) ?? '';
       username=name;
    return name;
  }





}