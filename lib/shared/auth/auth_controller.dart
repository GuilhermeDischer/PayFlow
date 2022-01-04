import 'package:flutter/material.dart';
import 'package:payflow/modules/home/home_page.dart';
import 'package:payflow/modules/login/login_page.dart';

class AuthController {
  bool _isAuthenticated = false;
  var _user;

  get user => _user;

  void SetUser(BuildContext context, var user) {
    if (user != null) {
      _user = user;
      _isAuthenticated = true;
      Navigator.pushReplacementNamed(
        context, 
        "/home"
      );
    } else {
      _isAuthenticated = false;
      Navigator.pushReplacementNamed(
        context, 
        "/login"
      );
    }
  }
}
