import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:localization_app/home_page.dart';

class CustomRouter {
  static Route<dynamic> allRoutes(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomePage());
        break;
    }
  }
}
